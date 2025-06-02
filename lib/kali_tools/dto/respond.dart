import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsRespondEnum { ewfTools, ghidra, guymager, hashrat, impacketScripts, netsniffNg }

Map<KaliToolsRespondEnum, String> _kaliToolsRespondMap = {
  KaliToolsRespondEnum.ewfTools: 'ewf-tools',
  KaliToolsRespondEnum.ghidra: 'ghidra',
  KaliToolsRespondEnum.guymager: 'guymager',
  KaliToolsRespondEnum.hashrat: 'hashrat',
  KaliToolsRespondEnum.impacketScripts: 'impacket-scripts',
  KaliToolsRespondEnum.netsniffNg: 'netsniff-ng',
};

extension KaliToolsRespondEnumExt on KaliToolsRespondEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRespondMap[this]!;
    }
  }
}

Future<void> selectKaliToolsRespondToInstall() => selectToolsToInstall<KaliToolsRespondEnum>(
  groupName: 'kali-tools-respond',
  values: KaliToolsRespondEnum.values,
  packageNameGetter: (e) => e.package,
);
