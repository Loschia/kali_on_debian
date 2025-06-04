import 'export.dart';

/// Check if Kali repo is installed
Future<bool> checkInstalledKali() async {
  final isKaliInstalled = await isKaliRepoInstalled();
  if (!isKaliInstalled) return await addKaliRepoAndSetPriority();
  return true;
}
