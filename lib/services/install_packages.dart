import 'dart:io';

import 'package:kali_on_debian/exports.dart';

/// Installs the specified list of packages using APT. Supports installing from Kali repositories if `isKali` is true.
///
/// - `packages`: List of package names to install.
/// - `isKali`: If true, installs from the Kali repo using `-t kali-rolling`.
Future<void> installPackages(List<String> packages, {bool isKali = true}) async {
  // No packages to install
  if (packages.isEmpty) {
    print('No packages to install.');
    await Future.delayed(const Duration(seconds: 1));
    return;
  }

  print('Installing selected packages.');

  final installArgs = [
    'apt',
    'install',
    '-y',
    if (isKali) ...['-t', 'kali-rolling'],
    ...packages,
  ];

  // Installing packages
  print('$fontStyleItalic${fontStyleGray}sudo ${installArgs.join(' ')}$fontStyleReset');
  final result = await Process.run('sudo', installArgs);
  stdout.write(result.stdout);
  stderr.write(result.stderr);

  // Update installed packages
  await checkAllPackageVersions(packages);
  await Future.delayed(const Duration(seconds: 1));
}
