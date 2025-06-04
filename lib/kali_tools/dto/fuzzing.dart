import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali fuzzing-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsFuzzingEnum` defines supported packages.
enum KaliToolsFuzzingEnum { aflpp, sfuzz, spike, wfuzz }

/// The map `_kaliToolsFuzzingMap` associates each enum with its corresponding package name.
Map<KaliToolsFuzzingEnum, String> _kaliToolsFuzzingMap = {
  KaliToolsFuzzingEnum.aflpp: 'afl++',
  KaliToolsFuzzingEnum.sfuzz: 'sfuzz',
  KaliToolsFuzzingEnum.spike: 'spike',
  KaliToolsFuzzingEnum.wfuzz: 'wfuzz',
};

/// The extension `KaliToolsFuzzingEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsFuzzingEnumExt on KaliToolsFuzzingEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsFuzzingMap[this]!;
    }
  }
}

/// Call `selectKaliToolsFuzzingToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-fuzzing` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsFuzzingToInstall() => selectToolsToInstall<KaliToolsFuzzingEnum>(
  groupName: 'kali-tools-fuzzing',
  values: KaliToolsFuzzingEnum.values,
  packageNameGetter: (e) => e.package,
);
