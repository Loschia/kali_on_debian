import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsIdentifyEnum {
  amass,
  assetfinder,
  cisco_auditing_tool,
  defectdojo,
  exploitdb,
  hb_honeypot,
  kali_autopilot,
  maltego,
  maryam,
  nipper_ng,
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
  KaliToolsIdentifyEnum.cisco_auditing_tool: 'cisco-auditing-tool',
  KaliToolsIdentifyEnum.defectdojo: 'defectdojo',
  KaliToolsIdentifyEnum.exploitdb: 'exploitdb',
  KaliToolsIdentifyEnum.hb_honeypot: 'hb-honeypot',
  KaliToolsIdentifyEnum.kali_autopilot: 'kali-autopilot',
  KaliToolsIdentifyEnum.maltego: 'maltego',
  KaliToolsIdentifyEnum.maryam: 'maryam',
  KaliToolsIdentifyEnum.nipper_ng: 'nipper-ng',
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

Future<ToolSelectionResult> selectKaliToolsIdentifyToInstall() =>
    selectToolsToInstall<KaliToolsIdentifyEnum>(
      groupName: 'kali-tools-identify',
      values: KaliToolsIdentifyEnum.values,
      packageNameGetter: (e) => e.package,
    );
