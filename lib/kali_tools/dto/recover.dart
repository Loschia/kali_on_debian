import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali recover-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsRecoverEnum` defines supported packages.
enum KaliToolsRecoverEnum { ddrescue, ext3grep, extundelete, myrescue, recoverdm, recoverjpeg, scroungeNtfs, undbx }

/// The map `_kaliToolsRecoverMap` associates each enum with its corresponding package name.
Map<KaliToolsRecoverEnum, String> _kaliToolsRecoverMap = {
  KaliToolsRecoverEnum.ddrescue: 'ddrescue',
  KaliToolsRecoverEnum.ext3grep: 'ext3grep',
  KaliToolsRecoverEnum.extundelete: 'extundelete',
  KaliToolsRecoverEnum.myrescue: 'myrescue',
  KaliToolsRecoverEnum.recoverdm: 'recoverdm',
  KaliToolsRecoverEnum.recoverjpeg: 'recoverjpeg',
  KaliToolsRecoverEnum.scroungeNtfs: 'scrounge-ntfs',
  KaliToolsRecoverEnum.undbx: 'undbx',
};

/// The extension `KaliToolsRecoverEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsRecoverEnumExt on KaliToolsRecoverEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRecoverMap[this]!;
    }
  }
}

/// Call `selectKaliToolsRecoverToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-recover` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsRecoverToInstall() => selectToolsToInstall<KaliToolsRecoverEnum>(
  groupName: 'kali-tools-recover',
  values: KaliToolsRecoverEnum.values,
  packageNameGetter: (e) => e.package,
);
