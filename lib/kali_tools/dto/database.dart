import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsDatabaseEnum {
  jsqlInjection,
  mdbtools,
  oscanner,
  sidguesser,
  sqldict,
  sqlitebrowser,
  sqlmap,
  sqlninja,
  sqlsus,
  tnscmd10g,
}

Map<KaliToolsDatabaseEnum, String> _kaliToolsDatabaseMap = {
  KaliToolsDatabaseEnum.jsqlInjection: 'jsql-injection',
  KaliToolsDatabaseEnum.mdbtools: 'mdbtools',
  KaliToolsDatabaseEnum.oscanner: 'oscanner',
  KaliToolsDatabaseEnum.sidguesser: 'sidguesser',
  KaliToolsDatabaseEnum.sqldict: 'sqldict',
  KaliToolsDatabaseEnum.sqlitebrowser: 'sqlitebrowser',
  KaliToolsDatabaseEnum.sqlmap: 'sqlmap',
  KaliToolsDatabaseEnum.sqlninja: 'sqlninja',
  KaliToolsDatabaseEnum.sqlsus: 'sqlsus',
  KaliToolsDatabaseEnum.tnscmd10g: 'tnscmd10g',
};

extension KaliToolsDatabaseEnumExt on KaliToolsDatabaseEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsDatabaseMap[this]!;
    }
  }
}

Future<void> selectKaliToolsDatabaseToInstall() => selectToolsToInstall<KaliToolsDatabaseEnum>(
  groupName: 'kali-tools-database',
  values: KaliToolsDatabaseEnum.values,
  packageNameGetter: (e) => e.package,
);
