import '../export.dart';

Future<bool> checkAptAndFlatpak() async {
  bool aptExists = await commandExists('apt');
  if (!aptExists) return false;

  bool flatpakExists = await commandExists('flatpak');
  if (flatpakExists == false) {
    if (!await installFlatpak()) return false;
  }
  return true;
}
