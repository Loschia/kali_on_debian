import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali respond-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsRespondEnum` defines supported packages.
enum KaliToolsRespondEnum { ewfTools, ghidra, guymager, hashrat, impacketScripts, netsniffNg }

/// The map `_kaliToolsRespondMap` associates each enum with its corresponding package name.
Map<KaliToolsRespondEnum, String> _kaliToolsRespondMap = {
  KaliToolsRespondEnum.ewfTools: 'ewf-tools',
  KaliToolsRespondEnum.ghidra: 'ghidra',
  KaliToolsRespondEnum.guymager: 'guymager',
  KaliToolsRespondEnum.hashrat: 'hashrat',
  KaliToolsRespondEnum.impacketScripts: 'impacket-scripts',
  KaliToolsRespondEnum.netsniffNg: 'netsniff-ng',
};

/// The extension `KaliToolsRespondEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsRespondEnumExt on KaliToolsRespondEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRespondMap[this]!;
    }
  }
}

/// Call `selectKaliToolsRespondToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-respond` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsRespondToInstall() => selectToolsToInstall<KaliToolsRespondEnum>(
  groupName: 'kali-tools-respond',
  values: KaliToolsRespondEnum.values,
  packageNameGetter: (e) => e.package,
);
