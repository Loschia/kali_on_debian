import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsRecoverEnum {
  ddrescue,
  ext3grep,
  extundelete,
  myrescue,
  recoverdm,
  recoverjpeg,
  scrounge_ntfs,
  undbx,
}

Map<KaliToolsRecoverEnum, String> _kaliToolsRecoverMap = {
  KaliToolsRecoverEnum.ddrescue: 'ddrescue',
  KaliToolsRecoverEnum.ext3grep: 'ext3grep',
  KaliToolsRecoverEnum.extundelete: 'extundelete',
  KaliToolsRecoverEnum.myrescue: 'myrescue',
  KaliToolsRecoverEnum.recoverdm: 'recoverdm',
  KaliToolsRecoverEnum.recoverjpeg: 'recoverjpeg',
  KaliToolsRecoverEnum.scrounge_ntfs: 'scrounge-ntfs',
  KaliToolsRecoverEnum.undbx: 'undbx',
};

extension KaliToolsRecoverEnumExt on KaliToolsRecoverEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRecoverMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsRecoverToInstall() =>
    selectToolsToInstall<KaliToolsRecoverEnum>(
      groupName: 'kali-tools-recover',
      values: KaliToolsRecoverEnum.values,
      packageNameGetter: (e) => e.package,
    );
