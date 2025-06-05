import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali reporting-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsReportingEnum` defines supported packages.
enum KaliToolsReportingEnum { cutycapt, dradis, eyewitness, faraday, maltego, metagoofil, pipal, recordmydesktop }

/// The map `_kaliToolsReportingMap` associates each enum with its corresponding package name.
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

/// The extension `KaliToolsReportingEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsReportingEnumExt on KaliToolsReportingEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsReportingMap[this]!;
    }
  }
}

/// Call `selectKaliToolsReportingToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-reporting` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsReportingToInstall() => selectToolsToInstall<KaliToolsReportingEnum>(
  groupName: 'kali-tools-reporting',
  values: KaliToolsReportingEnum.values,
  packageNameGetter: (e) => e.package,
);
