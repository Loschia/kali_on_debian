import 'dart:io';

Future<bool> addKaliRepoAndSetPriority() async {
  const keyUrl = 'https://archive.kali.org/archive-key.asc';
  const keyringPath = '/usr/share/keyrings/kali-archive-keyring.gpg';
  const repoPath = '/etc/apt/sources.list.d/kali.list';
  const pinPath = '/etc/apt/preferences.d/kali.pref';

  const repoContent =
      '''
deb [signed-by=$keyringPath] http://http.kali.org/kali kali-rolling main non-free contrib
''';

  const pinContent = '''
Package: *
Pin: release a=kali-rolling
Pin-Priority: 50
''';

  try {
    // Download the key
    final tempKeyPath = '/tmp/kali-key.asc';
    final downloadKey = await Process.run('wget', ['-O', tempKeyPath, keyUrl]);
    if (downloadKey.exitCode != 0) return false;

    // Convert ASCII key to binary GPG format
    final convertKey = await Process.run('gpg', [
      '--dearmor',
      '--output',
      keyringPath,
      tempKeyPath,
    ]);
    if (convertKey.exitCode != 0) return false;

    // Write Kali repo
    await File(repoPath).writeAsString(repoContent);

    // Write pin priority
    await File(pinPath).writeAsString(pinContent);

    // Update apt
    final update = await Process.run('apt', ['update']);
    if (update.exitCode != 0) return false;

    return true;
  } catch (_) {
    return false;
  }
}
