import 'package:kali_on_debian/services/select_tools_to_install.dart';

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

extension KaliToolsReverseEngineeringEnumExt on KaliToolsReverseEngineeringEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsReverseEngineeringMap[this]!;
    }
  }
}

Future<void> selectKaliToolsReverseEngineeringToInstall() =>
    selectToolsToInstall<KaliToolsReverseEngineeringEnum>(
      groupName: 'kali-tools-reverse-engineering',
      values: KaliToolsReverseEngineeringEnum.values,
      packageNameGetter: (e) => e.package,
    );
