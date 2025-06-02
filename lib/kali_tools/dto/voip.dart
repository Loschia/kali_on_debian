import 'package:kali_on_debian/services/select_tools_to_install.dart';

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

extension KaliToolsVOIPEnumExt on KaliToolsVOIPEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsVOIPMap[this]!;
    }
  }
}

Future<void> selectKaliToolsVOIPToInstall() => selectToolsToInstall<KaliToolsVOIPEnum>(
  groupName: 'kali-tools-voip',
  values: KaliToolsVOIPEnum.values,
  packageNameGetter: (e) => e.package,
);
