import 'dart:io';

Future<bool> installFlatpak() async {
  try {
    var install = await Process.start('sudo', [
      'apt',
      'install',
      '-y',
      'flatpak',
    ]);
    await stdout.addStream(install.stdout);
    await stderr.addStream(install.stderr);
    int installExitCode = await install.exitCode;

    return installExitCode == 0;
  } catch (e) {
    return false;
  }
}
