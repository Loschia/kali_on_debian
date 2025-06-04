import 'dart:io';

/// Adds the Kali Linux rolling repository to the system and sets its APT priority.
///
/// Steps performed:
/// 1. Downloads the Kali archive GPG key from the official Kali archive.
/// 2. Converts the key to binary format and saves it in the APT keyring directory.
/// 3. Writes the Kali repository entry to `/etc/apt/sources.list.d/kali.list`
///    using signed-by to reference the new keyring.
/// 4. Sets a global APT priority (Pin-Priority: 50) for all Kali packages via `/etc/apt/preferences.d/kali.pref`.
/// 5. Executes `apt update` to refresh the APT package lists.
///
/// If any step fails, the function returns `false`.
///
/// Returns:
/// - `true` if the repository and priority setup completed successfully.
/// - `false` if any subprocess or file operation fails.
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
    ProcessResult downloadKey = await Process.run('sudo', ['wget', '-O', tempKeyPath, keyUrl]);
    if (downloadKey.exitCode != 0) {
      await Process.run('sudo', ['rm', tempKeyPath]);
      downloadKey = await Process.run('sudo', ['wget', '-O', tempKeyPath, keyUrl]);
      if (downloadKey.exitCode != 0) return false;
    }

    // Convert ASCII key to binary GPG format
    ProcessResult convertKey = await Process.run('sudo', [
      'gpg',
      '--dearmor',
      '--output',
      keyringPath,
      tempKeyPath,
    ]);
    if (convertKey.exitCode != 0) {
      await Process.run('sudo', ['rm', keyringPath]);
      convertKey = await Process.run('sudo', [
        'gpg',
        '--dearmor',
        '--output',
        keyringPath,
        tempKeyPath,
      ]);
      if (convertKey.exitCode != 0) return false;
    }

    // Write Kali repo
    await File(repoPath).writeAsString(repoContent);

    // Write pin priority
    await File(pinPath).writeAsString(pinContent);

    // Update apt
    final update = await Process.run('sudo', ['apt', 'update']);
    if (update.exitCode != 0) return false;

    return true;
  } catch (_) {
    return false;
  }
}
