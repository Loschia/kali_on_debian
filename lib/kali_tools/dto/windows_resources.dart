import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsWindowsResourcesEnum {
  dbd,
  dnschef,
  heartleech,
  hyperion,
  mimikatz,
  ncatW32,
  ollydbg,
  powercat,
  regripper,
  sbd,
  secureSocketFunnelingWindowsBinaries,
  shellter,
  tftpd32,
  wce,
  windowsBinaries,
  windowsPrivescCheck,
}

Map<KaliToolsWindowsResourcesEnum, String> _kaliToolsWindowsResourcesMap = {
  KaliToolsWindowsResourcesEnum.dbd: 'dbd',
  KaliToolsWindowsResourcesEnum.dnschef: 'dnschef',
  KaliToolsWindowsResourcesEnum.heartleech: 'heartleech',
  KaliToolsWindowsResourcesEnum.hyperion: 'hyperion',
  KaliToolsWindowsResourcesEnum.mimikatz: 'mimikatz',
  KaliToolsWindowsResourcesEnum.ncatW32: 'ncat-w32',
  KaliToolsWindowsResourcesEnum.ollydbg: 'ollydbg',
  KaliToolsWindowsResourcesEnum.powercat: 'powercat',
  KaliToolsWindowsResourcesEnum.regripper: 'regripper',
  KaliToolsWindowsResourcesEnum.sbd: 'sbd',
  KaliToolsWindowsResourcesEnum.secureSocketFunnelingWindowsBinaries:
      'secure-socket-funneling-windows-binaries',
  KaliToolsWindowsResourcesEnum.shellter: 'shellter',
  KaliToolsWindowsResourcesEnum.tftpd32: 'tftpd32',
  KaliToolsWindowsResourcesEnum.wce: 'wce',
  KaliToolsWindowsResourcesEnum.windowsBinaries: 'windows-binaries',
  KaliToolsWindowsResourcesEnum.windowsPrivescCheck: 'windows-privesc-check',
};

extension KaliToolsWindowsResourcesEnumExt on KaliToolsWindowsResourcesEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsWindowsResourcesMap[this]!;
    }
  }
}

Future<void> selectKaliToolsWindowsResourcesToInstall() =>
    selectToolsToInstall<KaliToolsWindowsResourcesEnum>(
      groupName: 'kali-tools-windows-resources',
      values: KaliToolsWindowsResourcesEnum.values,
      packageNameGetter: (e) => e.package,
    );
