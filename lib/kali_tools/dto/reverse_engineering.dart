import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali reverse-engineering-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsReverseEngineeringEnum` defines supported packages.
enum KaliToolsReverseEngineeringEnum {
  apktool,
  bytecodeViewer,
  clang,
  dex2jar,
  edbDebugger,
  jadx,
  javasnoop,
  jdGui,
  metasploitFramework,
  ollydbg,
  radare2,
  rizinCutter,
  rzGhidra,
}

/// The map `_kaliToolsReverseEngineeringMap` associates each enum with its corresponding package name.
Map<KaliToolsReverseEngineeringEnum, String> _kaliToolsReverseEngineeringMap = {
  KaliToolsReverseEngineeringEnum.apktool: 'apktool',
  KaliToolsReverseEngineeringEnum.bytecodeViewer: 'bytecode-viewer',
  KaliToolsReverseEngineeringEnum.clang: 'clang',
  KaliToolsReverseEngineeringEnum.dex2jar: 'dex2jar',
  KaliToolsReverseEngineeringEnum.edbDebugger: 'edb-debugger',
  KaliToolsReverseEngineeringEnum.jadx: 'jadx',
  KaliToolsReverseEngineeringEnum.javasnoop: 'javasnoop',
  KaliToolsReverseEngineeringEnum.jdGui: 'jd-gui',
  KaliToolsReverseEngineeringEnum.metasploitFramework: 'metasploit-framework',
  KaliToolsReverseEngineeringEnum.ollydbg: 'ollydbg',
  KaliToolsReverseEngineeringEnum.radare2: 'radare2',
  KaliToolsReverseEngineeringEnum.rizinCutter: 'rizin-cutter',
  KaliToolsReverseEngineeringEnum.rzGhidra: 'rz-ghidra',
};

/// The extension `KaliToolsReverseEngineeringEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsReverseEngineeringEnumExt on KaliToolsReverseEngineeringEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsReverseEngineeringMap[this]!;
    }
  }
}

/// Call `selectKaliToolsReverseEngineeringToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-reverse-engineering` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsReverseEngineeringToInstall() =>
    selectToolsToInstall<KaliToolsReverseEngineeringEnum>(
      groupName: 'kali-tools-reverse-engineering',
      values: KaliToolsReverseEngineeringEnum.values,
      packageNameGetter: (e) => e.package,
    );
