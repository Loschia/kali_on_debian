import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali voip-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsVOIPEnum` defines supported packages.
enum KaliToolsVOIPEnum {
  enumiax,
  iaxflood,
  inviteflood,
  libfindrtp,
  nmap,
  ohrwurm,
  protosSip,
  rtpbreak,
  rtpflood,
  rtpinsertsound,
  rtpmixsound,
  sctpscan,
  siparmyknife,
  sipcrack,
  sipp,
  sipvicious,
  voiphopper,
  wireshark,
}

/// The map `_kaliToolsVOIPMap` associates each enum with its corresponding package name.
Map<KaliToolsVOIPEnum, String> _kaliToolsVOIPMap = {
  KaliToolsVOIPEnum.enumiax: 'enumiax',
  KaliToolsVOIPEnum.iaxflood: 'iaxflood',
  KaliToolsVOIPEnum.inviteflood: 'inviteflood',
  KaliToolsVOIPEnum.libfindrtp: 'libfindrtp',
  KaliToolsVOIPEnum.nmap: 'nmap',
  KaliToolsVOIPEnum.ohrwurm: 'ohrwurm',
  KaliToolsVOIPEnum.protosSip: 'protos-sip',
  KaliToolsVOIPEnum.rtpbreak: 'rtpbreak',
  KaliToolsVOIPEnum.rtpflood: 'rtpflood',
  KaliToolsVOIPEnum.rtpinsertsound: 'rtpinsertsound',
  KaliToolsVOIPEnum.rtpmixsound: 'rtpmixsound',
  KaliToolsVOIPEnum.sctpscan: 'sctpscan',
  KaliToolsVOIPEnum.siparmyknife: 'siparmyknife',
  KaliToolsVOIPEnum.sipcrack: 'sipcrack',
  KaliToolsVOIPEnum.sipp: 'sipp',
  KaliToolsVOIPEnum.sipvicious: 'sipvicious',
  KaliToolsVOIPEnum.voiphopper: 'voiphopper',
  KaliToolsVOIPEnum.wireshark: 'wireshark',
};

/// The extension `KaliToolsVOIPEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsVOIPEnumExt on KaliToolsVOIPEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsVOIPMap[this]!;
    }
  }
}

/// Call `selectKaliToolsVOIPToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-voip` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsVOIPToInstall() => selectToolsToInstall<KaliToolsVOIPEnum>(
  groupName: 'kali-tools-voip',
  values: KaliToolsVOIPEnum.values,
  packageNameGetter: (e) => e.package,
);
