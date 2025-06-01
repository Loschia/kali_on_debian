import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsFuzzingEnum { aflpp, sfuzz, spike, wfuzz }

Map<KaliToolsFuzzingEnum, String> _kaliToolsFuzzingMap = {
  KaliToolsFuzzingEnum.aflpp: 'afl++',
  KaliToolsFuzzingEnum.sfuzz: 'sfuzz',
  KaliToolsFuzzingEnum.spike: 'spike',
  KaliToolsFuzzingEnum.wfuzz: 'wfuzz',
};

extension KaliToolsFuzzingEnumExt on KaliToolsFuzzingEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsFuzzingMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsFuzzingToInstall() =>
    selectToolsToInstall<KaliToolsFuzzingEnum>(
      groupName: 'kali-tools-fuzzing',
      values: KaliToolsFuzzingEnum.values,
      packageNameGetter: (e) => e.package,
    );
