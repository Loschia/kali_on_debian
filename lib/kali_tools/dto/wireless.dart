import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali wireless-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsWirelessEnum` defines supported packages.
enum KaliToolsWirelessEnum { netexec, rfcat, rfkill, sakis3g, spectools, wireshark }

/// The map `_kaliToolsWirelessMap` associates each enum with its corresponding package name.
Map<KaliToolsWirelessEnum, String> _kaliToolsWirelessMap = {
  KaliToolsWirelessEnum.netexec: 'netexec',
  KaliToolsWirelessEnum.rfcat: 'rfcat',
  KaliToolsWirelessEnum.rfkill: 'rfkill',
  KaliToolsWirelessEnum.sakis3g: 'sakis3g',
  KaliToolsWirelessEnum.spectools: 'spectools',
  KaliToolsWirelessEnum.wireshark: 'wireshark',
};

/// The extension `KaliToolsWirelessEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsWirelessEnumExt on KaliToolsWirelessEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsWirelessMap[this]!;
    }
  }
}

/// Call `selectKaliToolsWirelessToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-wireless` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsWirelessToInstall() => selectToolsToInstall<KaliToolsWirelessEnum>(
  groupName: 'kali-tools-wireless',
  values: KaliToolsWirelessEnum.values,
  packageNameGetter: (e) => e.package,
);
