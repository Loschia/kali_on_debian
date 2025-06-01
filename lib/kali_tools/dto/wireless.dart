import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsWirelessEnum { rfcat, rfkill, sakis3g, spectools, wireshark }

Map<KaliToolsWirelessEnum, String> _kaliToolsWirelessMap = {
  KaliToolsWirelessEnum.rfcat: 'rfcat',
  KaliToolsWirelessEnum.rfkill: 'rfkill',
  KaliToolsWirelessEnum.sakis3g: 'sakis3g',
  KaliToolsWirelessEnum.spectools: 'spectools',
  KaliToolsWirelessEnum.wireshark: 'wireshark',
};

extension KaliToolsWirelessEnumExt on KaliToolsWirelessEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsWirelessMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsWirelessToInstall() =>
    selectToolsToInstall<KaliToolsWirelessEnum>(
      groupName: 'kali-tools-wireless',
      values: KaliToolsWirelessEnum.values,
      packageNameGetter: (e) => e.package,
    );
