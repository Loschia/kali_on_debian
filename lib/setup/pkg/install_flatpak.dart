import 'dart:io';

Future<bool> installFlatpak() async {
  try {
    var install = await Process.start('sudo', ['apt', 'install', '-y', 'flatpak']);
    await stdout.addStream(install.stdout);
    await stderr.addStream(install.stderr);
    int installExitCode = await install.exitCode;

    if (installExitCode != 0) return false;

    var remote = await Process.start('sudo', [
      'flatpak',
      'remote-add',
      '--if-not-exists',
      'flathub',
      'https://flathub.org/repo/flathub.flatpakrepo',
    ]);
    await stdout.addStream(remote.stdout);
    await stderr.addStream(remote.stderr);
    int remoteExitCode = await install.exitCode;
    return remoteExitCode == 0;
  } catch (e) {
    return false;
  }
}
