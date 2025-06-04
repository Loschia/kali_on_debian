import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali hardware-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsHardwareEnum` defines supported packages.
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

/// The map `_kaliToolsHardwareMap` associates each enum with its corresponding package name.
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

/// The extension `KaliToolsHardwareEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsHardwareEnumExt on KaliToolsHardwareEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsHardwareMap[this]!;
    }
  }
}

/// Call `selectKaliToolsHardwareToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-hardware` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsHardwareToInstall() => selectToolsToInstall<KaliToolsHardwareEnum>(
  groupName: 'kali-tools-hardware',
  values: KaliToolsHardwareEnum.values,
  packageNameGetter: (e) => e.package,
);
