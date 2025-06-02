import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsGPUEnum { oclgausscrack, truecrack }

Map<KaliToolsGPUEnum, String> _kaliToolsGPUMap = {
  KaliToolsGPUEnum.oclgausscrack: 'oclgausscrack',
  KaliToolsGPUEnum.truecrack: 'truecrack',
};

extension KaliToolsGPUEnumExt on KaliToolsGPUEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsGPUMap[this]!;
    }
  }
}

Future<void> selectKaliToolsGPUToInstall() => selectToolsToInstall<KaliToolsGPUEnum>(
  groupName: 'kali-tools-gpu',
  values: KaliToolsGPUEnum.values,
  packageNameGetter: (e) => e.package,
);
