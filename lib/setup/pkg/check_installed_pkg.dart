import 'dart:io';

import 'package:kali_on_debian/exports.dart';

/// Checks and stores version information for a list of packages by parsing a single `apt policy` output.
///
/// Instead of calling `apt policy` individually for each package (which is slow),
/// this function performs one consolidated call and splits the output into blocks, one per package.
/// Each block is then parsed using `getPackageAvailability`.
///
/// The result is stored in the global `packageAvailability` map, which contains version info
/// for all requested packages.
///
/// Requires `sudo` privileges to execute `apt policy`.
///
/// - `packages`: List of package names to check.
Future<void> checkAllPackageVersions(List<String> packages) async {
  // Get data for all the packages
  final aptProcess = Process.runSync('sudo', ['apt', 'policy', ...packages]);
  final aptResult = aptProcess.stdout.toString();

  // Turn in block each package result
  final lines = aptResult.split('\n');
  final pkgPolicy = <String>[];
  final pkgBuffer = <String>[];

  // Every block starts with a line like "nmap:", followed by indented lines.
  // A new block starts when a line has no indentation and ends with ":"
  for (final line in lines) {
    final isNewPackage = line.isNotEmpty && !line.startsWith(' ') && line.endsWith(':');
    if (isNewPackage && pkgBuffer.isNotEmpty) {
      pkgPolicy.add(pkgBuffer.join('\n'));
      pkgBuffer.clear();
    }
    pkgBuffer.add(line);
  }

  // Add last block
  if (pkgBuffer.isNotEmpty) {
    pkgPolicy.add(pkgBuffer.join('\n'));
  }

  for (int i = 0; i < packages.length; i++) {
    packageAvailability[packages[i]] = getPackageAvailability(pkgPolicy[i]);
  }
}

/// Stores version info (`apt`, `kali`, and `installed`) for each package checked via `checkAllPackageVersions`.
///
/// The key is the package name; the value is a `PackageVersion` object.
final Map<String, PackageVersion> packageAvailability = {};
