import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali bluetooth-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsBluetoothEnum` defines supported packages.
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

/// The map `_kaliToolsBluetoothMap` associates each enum with its corresponding package name.
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

/// The extension `KaliToolsBluetoothEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsBluetoothEnumExt on KaliToolsBluetoothEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsBluetoothMap[this]!;
    }
  }
}

/// Call `selectKaliToolsBluetoothToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-bluetooth` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsBluetoothToInstall() => selectToolsToInstall<KaliToolsBluetoothEnum>(
  groupName: 'kali-tools-bluetooth',
  values: KaliToolsBluetoothEnum.values,
  packageNameGetter: (e) => e.package,
);
