import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali detect-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsDetectEnum` defines supported packages.
enum KaliToolsDetectEnum { grokevt, sentrypeer }

/// The map `_kaliToolsDatabaseMap` associates each enum with its corresponding package name.
Map<KaliToolsDetectEnum, String> _kaliToolsDatabaseMap = {
  KaliToolsDetectEnum.grokevt: 'grokevt',
  KaliToolsDetectEnum.sentrypeer: 'sentrypeer',
};

/// The extension `KaliToolsDetectEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsDetectEnumExt on KaliToolsDetectEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsDatabaseMap[this]!;
    }
  }
}

/// Call `selectKaliToolsDetectToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-detect` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsDetectToInstall() => selectToolsToInstall<KaliToolsDetectEnum>(
  groupName: 'kali-tools-detect',
  values: KaliToolsDetectEnum.values,
  packageNameGetter: (e) => e.package,
);
