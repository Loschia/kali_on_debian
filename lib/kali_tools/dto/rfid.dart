import 'package:kali_on_debian/services/select_tools_to_install.dart';

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

extension KaliToolsRFIDEnumExt on KaliToolsRFIDEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsRFIDMap[this]!;
    }
  }
}

Future<void> selectKaliToolsRFIDToInstall() => selectToolsToInstall<KaliToolsRFIDEnum>(
  groupName: 'kali-tools-rfid',
  values: KaliToolsRFIDEnum.values,
  packageNameGetter: (e) => e.package,
);
