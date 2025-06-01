import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsRespondEnum { ewf_tools, ghidra, guymager, hashrat, impacket_scripts, netsniff_ng }

Map<KaliToolsRespondEnum, String> _kaliToolsRespondMap = {
  KaliToolsRespondEnum.ewf_tools: 'ewf-tools',
  KaliToolsRespondEnum.ghidra: 'ghidra',
  KaliToolsRespondEnum.guymager: 'guymager',
  KaliToolsRespondEnum.hashrat: 'hashrat',
  KaliToolsRespondEnum.impacket_scripts: 'impacket-scripts',
  KaliToolsRespondEnum.netsniff_ng: 'netsniff-ng',
};

extension KaliToolsRespondEnumExt on KaliToolsRespondEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRespondMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsRespondToInstall() =>
    selectToolsToInstall<KaliToolsRespondEnum>(
      groupName: 'kali-tools-respond',
      values: KaliToolsRespondEnum.values,
      packageNameGetter: (e) => e.package,
    );
