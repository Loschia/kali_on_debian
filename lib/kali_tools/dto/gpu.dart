import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali gpu-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsGPUEnum` defines supported packages.
enum KaliToolsGPUEnum { oclgausscrack, truecrack }

/// The map `_kaliToolsGPUMap` associates each enum with its corresponding package name.
Map<KaliToolsGPUEnum, String> _kaliToolsGPUMap = {
  KaliToolsGPUEnum.oclgausscrack: 'oclgausscrack',
  KaliToolsGPUEnum.truecrack: 'truecrack',
};

/// The extension `KaliToolsGPUEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsGPUEnumExt on KaliToolsGPUEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsGPUMap[this]!;
    }
  }
}

/// Call `selectKaliToolsGPUToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-gpu` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsGPUToInstall() => selectToolsToInstall<KaliToolsGPUEnum>(
  groupName: 'kali-tools-gpu',
  values: KaliToolsGPUEnum.values,
  packageNameGetter: (e) => e.package,
);
