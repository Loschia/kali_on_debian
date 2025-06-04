import 'dart:io';

/// Check if Kali repo is installed by checking if files exist
Future<bool> isKaliRepoInstalled() async {
  try {
    final repoFile = File('/etc/apt/sources.list.d/kali.list');
    if (!await repoFile.exists()) return false;

    final content = await repoFile.readAsString();
    if (!content.contains('kali-rolling')) return false;

    final pinFile = File('/etc/apt/preferences.d/kali.pref');
    if (!await pinFile.exists()) return false;

    final pinContent = await pinFile.readAsString();
    if (!pinContent.contains('Pin-Priority:')) return false;

    return true;
  } catch (_) {
    return false;
  }
}
