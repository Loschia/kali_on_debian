import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsHardwareEnum {
  binwalk,
  cutecom,
  flashrom,
  minicom,
  openocd,
  qemuSystemX86,
  qemuUser,
  radare2,
  rizinCutter,
  rzGhidra,
}

Map<KaliToolsHardwareEnum, String> _kaliToolsHardwareMap = {
  KaliToolsHardwareEnum.binwalk: 'binwalk',
  KaliToolsHardwareEnum.cutecom: 'cutecom',
  KaliToolsHardwareEnum.flashrom: 'flashrom',
  KaliToolsHardwareEnum.minicom: 'minicom',
  KaliToolsHardwareEnum.openocd: 'openocd',
  KaliToolsHardwareEnum.qemuSystemX86: 'qemu-system-x86',
  KaliToolsHardwareEnum.qemuUser: 'qemu-user',
  KaliToolsHardwareEnum.radare2: 'radare2',
  KaliToolsHardwareEnum.rizinCutter: 'rizin-cutter',
  KaliToolsHardwareEnum.rzGhidra: 'rz-ghidra',
};

extension KaliToolsHardwareEnumExt on KaliToolsHardwareEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsHardwareMap[this]!;
    }
  }
}

Future<void> selectKaliToolsHardwareToInstall() => selectToolsToInstall<KaliToolsHardwareEnum>(
  groupName: 'kali-tools-hardware',
  values: KaliToolsHardwareEnum.values,
  packageNameGetter: (e) => e.package,
);
