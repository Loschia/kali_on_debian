import 'export.dart';

Future<bool> checkInstalledKali() async {
  final isKaliInstalled = await isKaliRepoInstalled();
  if (!isKaliInstalled) return await addKaliRepoAndSetPriority();
  return true;
}
