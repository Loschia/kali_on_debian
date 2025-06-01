import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsSDREnum {
  chirp,
  gnuradio,
  gqrx_sdr,
  gr_air_modes,
  gr_iqbal,
  gr_osmosdr,
  hackrf,
  inspectrum,
  kalibrate_rtl,
  multimon_ng,
  uhd_host,
  uhd_images,
}

Map<KaliToolsSDREnum, String> _kaliToolsSDRMap = {
  KaliToolsSDREnum.chirp: 'chirp',
  KaliToolsSDREnum.gnuradio: 'gnuradio',
  KaliToolsSDREnum.gqrx_sdr: 'gqrx-sdr',
  KaliToolsSDREnum.gr_air_modes: 'gr-air-modes',
  KaliToolsSDREnum.gr_iqbal: 'gr-iqbal',
  KaliToolsSDREnum.gr_osmosdr: 'gr-osmosdr',
  KaliToolsSDREnum.hackrf: 'hackrf',
  KaliToolsSDREnum.inspectrum: 'inspectrum',
  KaliToolsSDREnum.kalibrate_rtl: 'kalibrate-rtl',
  KaliToolsSDREnum.multimon_ng: 'multimon-ng',
  KaliToolsSDREnum.uhd_host: 'uhd-host',
  KaliToolsSDREnum.uhd_images: 'uhd-images',
};

extension KaliToolsSDREnumExt on KaliToolsSDREnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSDRMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsSDRToInstall() => selectToolsToInstall<KaliToolsSDREnum>(
  groupName: 'kali-tools-sdr',
  values: KaliToolsSDREnum.values,
  packageNameGetter: (e) => e.package,
);
