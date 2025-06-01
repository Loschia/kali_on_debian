import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsReverseEngineeringEnum {
  apktool,
  bytecode_viewer,
  clang,
  dex2jar,
  edb_debugger,
  jadx,
  javasnoop,
  jd_gui,
  metasploit_framework,
  ollydbg,
  radare2,
  rizin_cutter,
  rz_ghidra,
}

Map<KaliToolsReverseEngineeringEnum, String> _kaliToolsReverseEngineeringMap = {
  KaliToolsReverseEngineeringEnum.apktool: 'apktool',
  KaliToolsReverseEngineeringEnum.bytecode_viewer: 'bytecode-viewer',
  KaliToolsReverseEngineeringEnum.clang: 'clang',
  KaliToolsReverseEngineeringEnum.dex2jar: 'dex2jar',
  KaliToolsReverseEngineeringEnum.edb_debugger: 'edb-debugger',
  KaliToolsReverseEngineeringEnum.jadx: 'jadx',
  KaliToolsReverseEngineeringEnum.javasnoop: 'javasnoop',
  KaliToolsReverseEngineeringEnum.jd_gui: 'jd-gui',
  KaliToolsReverseEngineeringEnum.metasploit_framework: 'metasploit-framework',
  KaliToolsReverseEngineeringEnum.ollydbg: 'ollydbg',
  KaliToolsReverseEngineeringEnum.radare2: 'radare2',
  KaliToolsReverseEngineeringEnum.rizin_cutter: 'rizin-cutter',
  KaliToolsReverseEngineeringEnum.rz_ghidra: 'rz-ghidra',
};

extension KaliToolsReverseEngineeringEnumExt on KaliToolsReverseEngineeringEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsReverseEngineeringMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsReverseEngineeringToInstall() =>
    selectToolsToInstall<KaliToolsReverseEngineeringEnum>(
      groupName: 'kali-tools-reverse-engineering',
      values: KaliToolsReverseEngineeringEnum.values,
      packageNameGetter: (e) => e.package,
    );
