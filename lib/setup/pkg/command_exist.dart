import 'dart:io';

/// Check specific command
Future<bool> commandExists(String command) async {
  try {
    ProcessResult result = await Process.run('which', [command]);
    return result.exitCode == 0 && result.stdout.toString().trim().isNotEmpty;
  } catch (_) {
    return false;
  }
}
