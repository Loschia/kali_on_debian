import 'dart:io';

enum ToolSelectionResultType { install, remove, help, back }

class ToolSelectionResult {
  final ToolSelectionResultType type;
  final List<String> selected;

  ToolSelectionResult(this.type, [this.selected = const []]);
}

Future<ToolSelectionResult> selectToolsToInstall<T>({
  required String groupName,
  required List<T> values,
  required String Function(T) packageNameGetter,
}) async {
  final int len = values.length;

  print(groupName);
  print('Example: 0,1,4-9,11');
  for (int i = 0; i < values.length; i++) {
    print('$i. ${packageNameGetter(values[i])}');
  }

  print('$len. Install all');
  print('${len + 1}. Remove all');
  print('${len + 2}. Help');
  print('${len + 3}. Back');

  while (true) {
    stdout.write('\nSelect tools to install: ');
    final input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) continue;

    // Go back
    if (input == '${len + 3}') {
      return ToolSelectionResult(ToolSelectionResultType.back);
    }

    // Help
    if (input == '${len + 2}') {
      print('\n💡 Help:');
      print('- Use comma-separated indexes (e.g. 1,2,4-6)');
      print('- Use "$len" to select all tools');
      print('- Use "${len + 1}" to remove all tools');
      print('- Use "${len + 3}" or to return\n');
      continue;
    }

    // Install all
    if (input == '$len') {
      return ToolSelectionResult(
        ToolSelectionResultType.install,
        values.map(packageNameGetter).toList(),
      );
    }

    // Remove all
    if (input == '${len + 1}') {
      return ToolSelectionResult(
        ToolSelectionResultType.remove,
        values.map(packageNameGetter).toList(),
      );
    }

    final Set<int> indexes = {};

    for (var part in input.split(',')) {
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

    return ToolSelectionResult(ToolSelectionResultType.install, selected);
  }
}
