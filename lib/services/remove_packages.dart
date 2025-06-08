import 'dart:io';

import 'package:kali_on_debian/exports.dart';

/// Removes the specified list of packages using APT, followed by an autoremove to clean up unused dependencies.
///
/// - `packages`: List of package names to remove.
///
/// If the list is empty, the function returns early. Otherwise, it prints the equivalent shell command for reference, executes `apt remove`, then runs `apt autoremove -y` to clean up any leftover dependencies. Finally, it calls `checkAllPackageVersions` to refresh internal state.
Future<void> removePackages(List<String> packages) async {
  // No packages to remove
  if (packages.isEmpty) {
    print('No packages to remove.');
    await Future.delayed(const Duration(seconds: 1));
    return;
  }

  // Removing packages
  print('Removing selected packages.');
  print('$fontStyleItalic${fontStyleGray}sudo apt remove -y ${packages.join(' ')}$fontStyleReset');
  final result = await Process.run('sudo', ['apt', 'remove', '-y', ...packages]);
  if (result.exitCode != 0) {
    print('Error while removing: ${result.stderr}');
  }

  // Autoremove
  print('Removing leftovers.');
  print('$fontStyleItalic${fontStyleGray}sudo apt autoremove -y$fontStyleReset');
  await Process.run('sudo', ['apt', 'autoremove', '-y']);

  // Update installed packages
  await checkAllPackageVersions(packages);
  await Future.delayed(const Duration(seconds: 1));
}
