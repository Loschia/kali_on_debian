import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsHardwareEnum {
  binwalk,
  cutecom,
  flashrom,
  minicom,
  openocd,
  qemu_system_x86,
  qemu_user,
  radare2,
  rizin_cutter,
  rz_ghidra,
}

Map<KaliToolsHardwareEnum, String> _kaliToolsHardwareMap = {
  KaliToolsHardwareEnum.binwalk: 'binwalk',
  KaliToolsHardwareEnum.cutecom: 'cutecom',
  KaliToolsHardwareEnum.flashrom: 'flashrom',
  KaliToolsHardwareEnum.minicom: 'minicom',
  KaliToolsHardwareEnum.openocd: 'openocd',
  KaliToolsHardwareEnum.qemu_system_x86: 'qemu-system-x86',
  KaliToolsHardwareEnum.qemu_user: 'qemu-user',
  KaliToolsHardwareEnum.radare2: 'radare2',
  KaliToolsHardwareEnum.rizin_cutter: 'rizin-cutter',
  KaliToolsHardwareEnum.rz_ghidra: 'rz-ghidra',
};

extension KaliToolsHardwareEnumExt on KaliToolsHardwareEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsHardwareMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsHardwareToInstall() =>
    selectToolsToInstall<KaliToolsHardwareEnum>(
      groupName: 'kali-tools-hardware',
      values: KaliToolsHardwareEnum.values,
      packageNameGetter: (e) => e.package,
    );
