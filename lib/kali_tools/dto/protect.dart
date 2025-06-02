import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsProtectEnum {
  clamav,
  cryptsetup,
  cryptsetupInitramfs,
  cryptsetupNukePassword,
  fwbuilder,
}

Map<KaliToolsProtectEnum, String> _kaliToolsProtectMap = {
  KaliToolsProtectEnum.clamav: 'clamav',
  KaliToolsProtectEnum.cryptsetup: 'cryptsetup',
  KaliToolsProtectEnum.cryptsetupInitramfs: 'cryptsetup-initramfs',
  KaliToolsProtectEnum.cryptsetupNukePassword: 'cryptsetup-nuke-password',
  KaliToolsProtectEnum.fwbuilder: 'fwbuilder',
};

extension KaliToolsProtectEnumExt on KaliToolsProtectEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsProtectMap[this]!;
    }
  }
}

Future<void> selectKaliToolsProtectToInstall() => selectToolsToInstall<KaliToolsProtectEnum>(
  groupName: 'kali-tools-post-protect',
  values: KaliToolsProtectEnum.values,
  packageNameGetter: (e) => e.package,
);
