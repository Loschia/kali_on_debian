import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali social-engineering-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsSocialEngineeringEnum` defines supported packages.
enum KaliToolsSocialEngineeringEnum { beefXss, maltego, msfpc, set, veil }

/// The map `_kaliToolsSocialEngineeringMap` associates each enum with its corresponding package name.
Map<KaliToolsSocialEngineeringEnum, String> _kaliToolsSocialEngineeringMap = {
  KaliToolsSocialEngineeringEnum.beefXss: 'beef-xss',
  KaliToolsSocialEngineeringEnum.maltego: 'maltego',
  KaliToolsSocialEngineeringEnum.msfpc: 'msfpc',
  KaliToolsSocialEngineeringEnum.set: 'set',
  KaliToolsSocialEngineeringEnum.veil: 'veil',
};

/// The extension `KaliToolsSocialEngineeringEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsSocialEngineeringEnumExt on KaliToolsSocialEngineeringEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSocialEngineeringMap[this]!;
    }
  }
}

/// Call `selectKaliToolsSocialEngineeringToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-social-engineering` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsSocialEngineeringToInstall() => selectToolsToInstall<KaliToolsSocialEngineeringEnum>(
  groupName: 'kali-tools-social-engineering',
  values: KaliToolsSocialEngineeringEnum.values,
  packageNameGetter: (e) => e.package,
);
