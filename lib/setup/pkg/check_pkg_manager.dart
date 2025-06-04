import '../export.dart';

/// Check if APT exists
Future<bool> checkApt() async {
  bool aptExists = await commandExists('apt');
  if (!aptExists) return false;

  return true;
}
