import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsReportingEnum {
  cutycapt,
  dradis,
  eyewitness,
  faraday,
  maltego,
  metagoofil,
  pipal,
  recordmydesktop,
}

Map<KaliToolsReportingEnum, String> _kaliToolsReportingMap = {
  KaliToolsReportingEnum.cutycapt: 'cutycapt',
  KaliToolsReportingEnum.dradis: 'dradis',
  KaliToolsReportingEnum.eyewitness: 'eyewitness',
  KaliToolsReportingEnum.faraday: 'faraday',
  KaliToolsReportingEnum.maltego: 'maltego',
  KaliToolsReportingEnum.metagoofil: 'metagoofil',
  KaliToolsReportingEnum.pipal: 'pipal',
  KaliToolsReportingEnum.recordmydesktop: 'recordmydesktop',
};

extension KaliToolsReportingEnumExt on KaliToolsReportingEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsReportingMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsReportingToInstall() =>
    selectToolsToInstall<KaliToolsReportingEnum>(
      groupName: 'kali-tools-reporting',
      values: KaliToolsReportingEnum.values,
      packageNameGetter: (e) => e.package,
    );
