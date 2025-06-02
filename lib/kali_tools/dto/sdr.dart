import 'package:kali_on_debian/services/select_tools_to_install.dart';

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

extension KaliToolsSDREnumExt on KaliToolsSDREnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSDRMap[this]!;
    }
  }
}

Future<void> selectKaliToolsSDRToInstall() => selectToolsToInstall<KaliToolsSDREnum>(
  groupName: 'kali-tools-sdr',
  values: KaliToolsSDREnum.values,
  packageNameGetter: (e) => e.package,
);
