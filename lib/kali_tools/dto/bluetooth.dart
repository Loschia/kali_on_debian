import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsBluetoothEnum {
  blue_hydra,
  bluelog,
  blueranger,
  bluesnarfer,
  bluez,
  bluez_hcidump,
  btscanner,
  crackle,
  redfang,
  spooftooph,
  ubertooth,
}

Map<KaliToolsBluetoothEnum, String> _kaliToolsBluetoothMap = {
  KaliToolsBluetoothEnum.blue_hydra: 'blue-hydra',
  KaliToolsBluetoothEnum.bluelog: 'bluelog',
  KaliToolsBluetoothEnum.blueranger: 'blueranger',
  KaliToolsBluetoothEnum.bluesnarfer: 'bluesnarfer',
  KaliToolsBluetoothEnum.bluez: 'bluez',
  KaliToolsBluetoothEnum.bluez_hcidump: 'bluez-hcidump',
  KaliToolsBluetoothEnum.btscanner: 'btscanner',
  KaliToolsBluetoothEnum.crackle: 'crackle',
  KaliToolsBluetoothEnum.redfang: 'redfang',
  KaliToolsBluetoothEnum.spooftooph: 'spooftooph',
  KaliToolsBluetoothEnum.ubertooth: 'ubertooth',
};

extension KaliToolsBluetoothEnumExt on KaliToolsBluetoothEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsBluetoothMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsBluetoothToInstall() =>
    selectToolsToInstall<KaliToolsBluetoothEnum>(
      groupName: 'kali-tools-bluetooth',
      values: KaliToolsBluetoothEnum.values,
      packageNameGetter: (e) => e.package,
    );
