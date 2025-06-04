import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali identify-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsIdentifyEnum` defines supported packages.
enum KaliToolsIdentifyEnum {
  amass,
  assetfinder,
  ciscoAuditingTool,
  defectdojo,
  exploitdb,
  hbHoneypot,
  kaliAutopilot,
  maltego,
  maryam,
  nipperNg,
  osrframework,
  spiderfoot,
  tiger,
  wapiti,
  witnessme,
  zaproxy,
}

/// The map `_kaliToolsIdentifyMap` associates each enum with its corresponding package name.
Map<KaliToolsIdentifyEnum, String> _kaliToolsIdentifyMap = {
  KaliToolsIdentifyEnum.amass: 'amass',
  KaliToolsIdentifyEnum.assetfinder: 'assetfinder',
  KaliToolsIdentifyEnum.ciscoAuditingTool: 'cisco-auditing-tool',
  KaliToolsIdentifyEnum.defectdojo: 'defectdojo',
  KaliToolsIdentifyEnum.exploitdb: 'exploitdb',
  KaliToolsIdentifyEnum.hbHoneypot: 'hb-honeypot',
  KaliToolsIdentifyEnum.kaliAutopilot: 'kali-autopilot',
  KaliToolsIdentifyEnum.maltego: 'maltego',
  KaliToolsIdentifyEnum.maryam: 'maryam',
  KaliToolsIdentifyEnum.nipperNg: 'nipper-ng',
  KaliToolsIdentifyEnum.osrframework: 'osrframework',
  KaliToolsIdentifyEnum.spiderfoot: 'spiderfoot',
  KaliToolsIdentifyEnum.tiger: 'tiger',
  KaliToolsIdentifyEnum.wapiti: 'wapiti',
  KaliToolsIdentifyEnum.witnessme: 'witnessme',
  KaliToolsIdentifyEnum.zaproxy: 'zaproxy',
};

/// The extension `KaliToolsIdentifyEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsIdentifyEnumExt on KaliToolsIdentifyEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsIdentifyMap[this]!;
    }
  }
}

/// Call `selectKaliToolsIdentifyToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-identify` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsIdentifyToInstall() => selectToolsToInstall<KaliToolsIdentifyEnum>(
  groupName: 'kali-tools-identify',
  values: KaliToolsIdentifyEnum.values,
  packageNameGetter: (e) => e.package,
);
