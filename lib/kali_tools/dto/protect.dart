import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali protect-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsProtectEnum` defines supported packages
enum KaliToolsProtectEnum {
  clamav,
  cryptsetup,
  cryptsetupInitramfs,
  cryptsetupNukePassword,
  fwbuilder,
}

/// The map `_kaliToolsProtectMap` associates each enum with its corresponding package name.
Map<KaliToolsProtectEnum, String> _kaliToolsProtectMap = {
  KaliToolsProtectEnum.clamav: 'clamav',
  KaliToolsProtectEnum.cryptsetup: 'cryptsetup',
  KaliToolsProtectEnum.cryptsetupInitramfs: 'cryptsetup-initramfs',
  KaliToolsProtectEnum.cryptsetupNukePassword: 'cryptsetup-nuke-password',
  KaliToolsProtectEnum.fwbuilder: 'fwbuilder',
};

/// The extension `KaliToolsProtectEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsProtectEnumExt on KaliToolsProtectEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsProtectMap[this]!;
    }
  }
}

/// Call `selectKaliToolsProtectToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-protect` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsProtectToInstall() => selectToolsToInstall<KaliToolsProtectEnum>(
  groupName: 'kali-tools-post-protect',
  values: KaliToolsProtectEnum.values,
  packageNameGetter: (e) => e.package,
);
