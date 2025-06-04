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
  final int len = values.length;
  printTitle();
  late String choice;

  void selectChoice() {
    stdout.write('\nSelect tools to install: ');
    choice = stdin.readLineSync() ?? '';
  }

  print('\n$groupName\n');
  for (int i = 0; i < values.length; i++) {
    String packageText = '$i. ${packageNameGetter(values[i])}';
    if (i < 10) packageText = ' $packageText';
    if (i < 100) packageText = ' $packageText';

    packageText += ' ' * (50 - packageText.length);
    String apt = packageAvailability[packageNameGetter(values[i])]?.apt ?? '';
    String kali = packageAvailability[packageNameGetter(values[i])]?.kali ?? '';
    packageText += 'Version:';
    if (apt.isNotEmpty) packageText += ' APT: $apt';
    if (kali.isNotEmpty) packageText += ' Kali: $kali';

    print(packageText);
  }

  print('$len. Install all');
  print('${len + 1}. Remove all');
  print('${len + 2}. Back');
  print('${len + 3}. Help');

  while (true) {
    selectChoice();

    if (choice.trim().isEmpty) continue;

    // Install all
    if (choice == '$len') {
      //todo: install all, then reload page with updated UI
      continue;
    }

    // Remove all
    if (choice == '${len + 1}') {
      //todo: remove, then reload page with updated UI
      continue;
    }

    // Go back
    if (choice == '${len + 2}') return;

    // Help
    if (choice == '${len + 3}') {
      help(len);
      selectChoice();
      continue;
    }

    final Set<int> indexes = {};

    for (var part in choice.split(',')) {
      part = part.trim();
      if (part.contains('-')) {
        final rangeParts = part.split('-');
        if (rangeParts.length != 2) continue;

        final start = int.tryParse(rangeParts[0]);
        final end = int.tryParse(rangeParts[1]);

        if (start == null || end == null || start > end) continue;

        for (int i = start; i <= end; i++) {
          if (i >= 0 && i < values.length) indexes.add(i);
        }
      } else {
        final index = int.tryParse(part);
        if (index != null && index >= 0 && index < values.length) {
          indexes.add(index);
        }
      }
    }

    if (indexes.isEmpty) continue;

    final selected = indexes.map((i) => packageNameGetter(values[i])).toList();
    print('\nTool selezionati: ${selected.join(', ')}\n');
    //todo: install or remove

    continue;
  }
}
