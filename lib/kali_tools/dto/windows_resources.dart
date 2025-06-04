import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali windows-resources-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsWindowsResourcesEnum` defines supported packages.
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

/// The map `_kaliToolsWindowsResourcesMap` associates each enum with its corresponding package name.
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

/// The extension `KaliToolsWindowsResourcesEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsWindowsResourcesEnumExt on KaliToolsWindowsResourcesEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsWindowsResourcesMap[this]!;
    }
  }
}

/// Call `selectKaliToolsWindowsResourcesToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-windows-resources` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsWindowsResourcesToInstall() =>
    selectToolsToInstall<KaliToolsWindowsResourcesEnum>(
      groupName: 'kali-tools-windows-resources',
      values: KaliToolsWindowsResourcesEnum.values,
      packageNameGetter: (e) => e.package,
    );
