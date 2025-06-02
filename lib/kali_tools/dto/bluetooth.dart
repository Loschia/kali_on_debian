import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsBluetoothEnum {
  blueHydra,
  bluelog,
  blueranger,
  bluesnarfer,
  bluez,
  bluezHcidump,
  btscanner,
  crackle,
  redfang,
  spooftooph,
  ubertooth,
}

Map<KaliToolsBluetoothEnum, String> _kaliToolsBluetoothMap = {
  KaliToolsBluetoothEnum.blueHydra: 'blue-hydra',
  KaliToolsBluetoothEnum.bluelog: 'bluelog',
  KaliToolsBluetoothEnum.blueranger: 'blueranger',
  KaliToolsBluetoothEnum.bluesnarfer: 'bluesnarfer',
  KaliToolsBluetoothEnum.bluez: 'bluez',
  KaliToolsBluetoothEnum.bluezHcidump: 'bluez-hcidump',
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

Future<void> selectKaliToolsBluetoothToInstall() => selectToolsToInstall<KaliToolsBluetoothEnum>(
  groupName: 'kali-tools-bluetooth',
  values: KaliToolsBluetoothEnum.values,
  packageNameGetter: (e) => e.package,
);
