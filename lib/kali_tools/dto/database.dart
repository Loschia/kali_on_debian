import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali database-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsDatabaseEnum` defines supported packages.
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

/// The map `_kaliToolsDatabaseMap` associates each enum with its corresponding package name.
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

/// The extension `KaliToolsDatabaseEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsDatabaseEnumExt on KaliToolsDatabaseEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsDatabaseMap[this]!;
    }
  }
}

/// Call `selectKaliToolsDatabaseToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-database` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsDatabaseToInstall() => selectToolsToInstall<KaliToolsDatabaseEnum>(
  groupName: 'kali-tools-database',
  values: KaliToolsDatabaseEnum.values,
  packageNameGetter: (e) => e.package,
);
