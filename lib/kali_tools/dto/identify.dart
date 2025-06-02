import 'package:kali_on_debian/services/select_tools_to_install.dart';

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

extension KaliToolsIdentifyEnumExt on KaliToolsIdentifyEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsIdentifyMap[this]!;
    }
  }
}

Future<void> selectKaliToolsIdentifyToInstall() => selectToolsToInstall<KaliToolsIdentifyEnum>(
  groupName: 'kali-tools-identify',
  values: KaliToolsIdentifyEnum.values,
  packageNameGetter: (e) => e.package,
);
