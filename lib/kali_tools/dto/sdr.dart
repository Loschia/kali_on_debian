import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali sdr-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsSDREnum` defines supported packages.
enum KaliToolsSDREnum {
  chirp,
  gnuradio,
  gqrxSdr,
  grAirModes,
  grIqbal,
  grOsmosdr,
  hackrf,
  inspectrum,
  kalibrateRtl,
  multimonNg,
  uhdHost,
  uhdImages,
}

/// The map `_kaliToolsSDRMap` associates each enum with its corresponding package name.
Map<KaliToolsSDREnum, String> _kaliToolsSDRMap = {
  KaliToolsSDREnum.chirp: 'chirp',
  KaliToolsSDREnum.gnuradio: 'gnuradio',
  KaliToolsSDREnum.gqrxSdr: 'gqrx-sdr',
  KaliToolsSDREnum.grAirModes: 'gr-air-modes',
  KaliToolsSDREnum.grIqbal: 'gr-iqbal',
  KaliToolsSDREnum.grOsmosdr: 'gr-osmosdr',
  KaliToolsSDREnum.hackrf: 'hackrf',
  KaliToolsSDREnum.inspectrum: 'inspectrum',
  KaliToolsSDREnum.kalibrateRtl: 'kalibrate-rtl',
  KaliToolsSDREnum.multimonNg: 'multimon-ng',
  KaliToolsSDREnum.uhdHost: 'uhd-host',
  KaliToolsSDREnum.uhdImages: 'uhd-images',
};

/// The extension `KaliToolsSDREnumExt` exposes the resolved package name via the package getter.
extension KaliToolsSDREnumExt on KaliToolsSDREnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSDRMap[this]!;
    }
  }
}

/// Call `selectKaliToolsSDRToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-sdr` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsSDRToInstall() => selectToolsToInstall<KaliToolsSDREnum>(
  groupName: 'kali-tools-sdr',
  values: KaliToolsSDREnum.values,
  packageNameGetter: (e) => e.package,
);
