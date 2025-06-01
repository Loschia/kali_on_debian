import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsWindowsResourcesEnum {
  dbd,
  dnschef,
  heartleech,
  hyperion,
  mimikatz,
  ncat_w32,
  ollydbg,
  powercat,
  regripper,
  sbd,
  secure_socket_funneling_windows_binaries,
  shellter,
  tftpd32,
  wce,
  windows_binaries,
  windows_privesc_check,
}

Map<KaliToolsWindowsResourcesEnum, String> _kaliToolsWindowsResourcesMap = {
  KaliToolsWindowsResourcesEnum.dbd: 'dbd',
  KaliToolsWindowsResourcesEnum.dnschef: 'dnschef',
  KaliToolsWindowsResourcesEnum.heartleech: 'heartleech',
  KaliToolsWindowsResourcesEnum.hyperion: 'hyperion',
  KaliToolsWindowsResourcesEnum.mimikatz: 'mimikatz',
  KaliToolsWindowsResourcesEnum.ncat_w32: 'ncat-w32',
  KaliToolsWindowsResourcesEnum.ollydbg: 'ollydbg',
  KaliToolsWindowsResourcesEnum.powercat: 'powercat',
  KaliToolsWindowsResourcesEnum.regripper: 'regripper',
  KaliToolsWindowsResourcesEnum.sbd: 'sbd',
  KaliToolsWindowsResourcesEnum.secure_socket_funneling_windows_binaries:
      'secure-socket-funneling-windows-binaries',
  KaliToolsWindowsResourcesEnum.shellter: 'shellter',
  KaliToolsWindowsResourcesEnum.tftpd32: 'tftpd32',
  KaliToolsWindowsResourcesEnum.wce: 'wce',
  KaliToolsWindowsResourcesEnum.windows_binaries: 'windows-binaries',
  KaliToolsWindowsResourcesEnum.windows_privesc_check: 'windows-privesc-check',
};

extension KaliToolsWindowsResourcesEnumExt on KaliToolsWindowsResourcesEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsWindowsResourcesMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsWindowsResourcesToInstall() =>
    selectToolsToInstall<KaliToolsWindowsResourcesEnum>(
      groupName: 'kali-tools-windows-resources',
      values: KaliToolsWindowsResourcesEnum.values,
      packageNameGetter: (e) => e.package,
    );
