import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsProtectEnum {
  clamav,
  cryptsetup,
  cryptsetup_initramfs,
  cryptsetup_nuke_password,
  fwbuilder,
}

Map<KaliToolsProtectEnum, String> _kaliToolsProtectMap = {
  KaliToolsProtectEnum.clamav: 'clamav',
  KaliToolsProtectEnum.cryptsetup: 'cryptsetup',
  KaliToolsProtectEnum.cryptsetup_initramfs: 'cryptsetup-initramfs',
  KaliToolsProtectEnum.cryptsetup_nuke_password: 'cryptsetup-nuke-password',
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

Future<ToolSelectionResult> selectKaliToolsProtectToInstall() =>
    selectToolsToInstall<KaliToolsProtectEnum>(
      groupName: 'kali-tools-post-protect',
      values: KaliToolsProtectEnum.values,
      packageNameGetter: (e) => e.package,
    );
