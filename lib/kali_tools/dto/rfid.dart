import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsRFIDEnum {
  gnuradio,
  libfreefare_bin,
  libnfc_bin,
  mfcuk,
  mfoc,
  mfterm,
  proxmark3,
  rfdump,
}

Map<KaliToolsRFIDEnum, String> _kaliToolsRFIDMap = {
  KaliToolsRFIDEnum.gnuradio: 'gnuradio',
  KaliToolsRFIDEnum.libfreefare_bin: 'libfreefare-bin',
  KaliToolsRFIDEnum.libnfc_bin: 'libnfc-bin',
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

Future<ToolSelectionResult> selectKaliToolsRFIDToInstall() =>
    selectToolsToInstall<KaliToolsRFIDEnum>(
      groupName: 'kali-tools-rfid',
      values: KaliToolsRFIDEnum.values,
      packageNameGetter: (e) => e.package,
    );
