import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali rfid-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsRFIDEnum` defines supported packages.
enum KaliToolsRFIDEnum {
  gnuradio,
  libfreefareBin,
  libnfcBin,
  mfcuk,
  mfoc,
  mfterm,
  proxmark3,
  rfdump,
}

/// The map `_kaliToolsRFIDMap` associates each enum with its corresponding package name.
Map<KaliToolsRFIDEnum, String> _kaliToolsRFIDMap = {
  KaliToolsRFIDEnum.gnuradio: 'gnuradio',
  KaliToolsRFIDEnum.libfreefareBin: 'libfreefare-bin',
  KaliToolsRFIDEnum.libnfcBin: 'libnfc-bin',
  KaliToolsRFIDEnum.mfcuk: 'mfcuk',
  KaliToolsRFIDEnum.mfoc: 'mfoc',
  KaliToolsRFIDEnum.mfterm: 'mfterm',
  KaliToolsRFIDEnum.proxmark3: 'proxmark3',
  KaliToolsRFIDEnum.rfdump: 'rfdump',
};

/// The extension `KaliToolsRFIDEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsRFIDEnumExt on KaliToolsRFIDEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRFIDMap[this]!;
    }
  }
}

/// Call `selectKaliToolsRFIDToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-rfid` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsRFIDToInstall() => selectToolsToInstall<KaliToolsRFIDEnum>(
  groupName: 'kali-tools-rfid',
  values: KaliToolsRFIDEnum.values,
  packageNameGetter: (e) => e.package,
);
