import 'dart:io';

import 'package:kali_on_debian/exports.dart';

/// Displays an interactive terminal-based selection menu for a list of tools.
///
/// - `groupName`: Descriptive name for the group of tools (used in the title).
/// - `values`: List of enum values representing tools.
/// - `packageNameGetter`: Function that returns the package name for each enum value.
///
/// Options:
/// - Select specific indexes (e.g. `0, 2, 5`)
/// - Ranges supported (e.g. `1-4`)
/// - Last entries include:
///   - `Install all` (index = values.length)
///   - `Remove all` (index = values.length + 1)
///   - `Back` (index = values.length + 2)
///   - `Help` (index = values.length + 3)
Future<void> selectToolsToInstall<T>({
  required String groupName,
  required List<T> values,
  required String Function(T) packageNameGetter,
}) async {
  final int length = values.length;
  int lengthNumber = (length + 3).toString().length;
  printTitle();
  late String choice;

  void selectChoice() {
    stdout.write('\nSelect tools to install: ');
    choice = stdin.readLineSync() ?? '';
  }

  print('\n$groupName\n');
  for (int i = 0; i < values.length; i++) {
    PackageVersion version = packageAvailability[packageNameGetter(values[i])]!;

    String packageText = ' ' * (lengthNumber - i.toString().length) + '$i. ${packageNameGetter(values[i])}';
    packageText += ' ' * (50 - packageText.length);

    packageText += 'Version:';
    if (version.apt.isNotEmpty) packageText += ' APT: ${version.apt}';
    if (version.kali.isNotEmpty) packageText += ' Kali: ${version.kali}';

    if (version.installed.isNotEmpty) packageText = '$fontStyleInstalledPackage$packageText$fontStyleReset';

    print(packageText);
  }

  String spaceLen = ' ' * (lengthNumber - length.toString().length);
  String spaceLen1 = ' ' * (lengthNumber - (length + 1).toString().length);
  String spaceLen2 = ' ' * (lengthNumber - (length + 2).toString().length);

  print('$spaceLen$length. Install all');
  print('$spaceLen1${length + 1}. Remove all');
  print('$spaceLen2${length + 2}. Back');
  print('${length + 3}. Help');

  while (true) {
    selectChoice();

    if (choice.trim().isEmpty) continue;

    // Install all
    if (choice == '$length') {
      //todo: install all, then reload page with updated UI
      continue;
    }

    // Remove all
    if (choice == '${length + 1}') {
      //todo: remove, then reload page with updated UI
      continue;
    }

    // Go back
    if (choice == '${length + 2}') return;

    // Help
    if (choice == '${length + 3}') {
      help(length);
      selectChoice();
      continue;
    }

    final Set<int> installIndexes = {};
    final Set<int> removeIndexes = {};

    for (var part in choice.split(',')) {
      part = part.trim();
      final isRemove = part.startsWith('~');
      part = isRemove ? part.substring(1) : part;

      if (part.contains('-')) {
        final rangeParts = part.split('-');
        if (rangeParts.length != 2) continue;

        final start = int.tryParse(rangeParts[0]);
        final end = int.tryParse(rangeParts[1]);

        if (start == null || end == null || start > end) continue;

        for (int i = start; i <= end; i++) {
          if (i >= 0 && i < values.length) isRemove ? removeIndexes.add(i) : installIndexes.add(i);
        }
      } else {
        final i = int.tryParse(part);
        if (i != null && i >= 0 && i < values.length) isRemove ? removeIndexes.add(i) : installIndexes.add(i);
      }
    }

    if (installIndexes.isEmpty && removeIndexes.isEmpty) continue;

    final selectedToInstall = installIndexes.map((i) => packageNameGetter(values[i])).toList();
    final selectedToRemove = removeIndexes.map((i) => packageNameGetter(values[i])).toList();

    print('\nTool install: ${selectedToInstall.join(', ')}\n');
    print('\nTool remove: ${selectedToRemove.join(', ')}\n');
    //todo: install or remove

    continue;
  }
}
