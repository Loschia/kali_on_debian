import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsDetectEnum { grokevt, sentrypeer }

Map<KaliToolsDetectEnum, String> _kaliToolsDatabaseMap = {
  KaliToolsDetectEnum.grokevt: 'grokevt',
  KaliToolsDetectEnum.sentrypeer: 'sentrypeer',
};

extension KaliToolsDetectEnumExt on KaliToolsDetectEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsDatabaseMap[this]!;
    }
  }
}

Future<void> selectKaliToolsDetectToInstall() => selectToolsToInstall<KaliToolsDetectEnum>(
  groupName: 'kali-tools-detect',
  values: KaliToolsDetectEnum.values,
  packageNameGetter: (e) => e.package,
);
