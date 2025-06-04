import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali information-gathering-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsInformationGatheringEnum` defines supported packages.
enum KaliToolsInformationGatheringEnum {
  otrace,
  arping,
  iputilsArping,
  braa,
  dmitry,
  dnsenum,
  dnsmap,
  dnsrecon,
  dnstracer,
  dnswalk,
  enum4linux,
  fierce,
  firewalk,
  fping,
  fragrouter,
  ftester,
  hping3,
  ikeScan,
  intrace,
  irpas,
  lbd,
  legion,
  maltego,
  masscan,
  metagoofil,
  nbtscan,
  ncat,
  netdiscover,
  netmask,
  nmap,
  onesixtyone,
  p0f,
  qsslcaudit,
  reconNg,
  smbmap,
  smtpUserEnum,
  snmpcheck,
  ssldump,
  sslh,
  sslscan,
  sslyze,
  swaks,
  thcIpv6,
  theharvester,
  tlssled,
  twofi,
  unicornscan,
  urlcrazy,
  wafw00f,
  zenmap,
}

/// The map `_kaliToolsInformationGatheringMap` associates each enum with its corresponding package name.
Map<KaliToolsInformationGatheringEnum, String> _kaliToolsInformationGatheringMap = {
  KaliToolsInformationGatheringEnum.otrace: '0trace',
  KaliToolsInformationGatheringEnum.arping: 'arping',
  KaliToolsInformationGatheringEnum.iputilsArping: 'iputils-arping',
  KaliToolsInformationGatheringEnum.braa: 'braa',
  KaliToolsInformationGatheringEnum.dmitry: 'dmitry',
  KaliToolsInformationGatheringEnum.dnsenum: 'dnsenum',
  KaliToolsInformationGatheringEnum.dnsmap: 'dnsmap',
  KaliToolsInformationGatheringEnum.dnsrecon: 'dnsrecon',
  KaliToolsInformationGatheringEnum.dnstracer: 'dnstracer',
  KaliToolsInformationGatheringEnum.dnswalk: 'dnswalk',
  KaliToolsInformationGatheringEnum.enum4linux: 'enum4linux',
  KaliToolsInformationGatheringEnum.fierce: 'fierce',
  KaliToolsInformationGatheringEnum.firewalk: 'firewalk',
  KaliToolsInformationGatheringEnum.fping: 'fping',
  KaliToolsInformationGatheringEnum.fragrouter: 'fragrouter',
  KaliToolsInformationGatheringEnum.ftester: 'ftester',
  KaliToolsInformationGatheringEnum.hping3: 'hping3',
  KaliToolsInformationGatheringEnum.ikeScan: 'ike-scan',
  KaliToolsInformationGatheringEnum.intrace: 'intrace',
  KaliToolsInformationGatheringEnum.irpas: 'irpas',
  KaliToolsInformationGatheringEnum.lbd: 'lbd',
  KaliToolsInformationGatheringEnum.legion: 'legion',
  KaliToolsInformationGatheringEnum.maltego: 'maltego',
  KaliToolsInformationGatheringEnum.masscan: 'masscan',
  KaliToolsInformationGatheringEnum.metagoofil: 'metagoofil',
  KaliToolsInformationGatheringEnum.nbtscan: 'nbtscan',
  KaliToolsInformationGatheringEnum.ncat: 'ncat',
  KaliToolsInformationGatheringEnum.netdiscover: 'netdiscover',
  KaliToolsInformationGatheringEnum.netmask: 'netmask',
  KaliToolsInformationGatheringEnum.nmap: 'nmap',
  KaliToolsInformationGatheringEnum.onesixtyone: 'onesixtyone',
  KaliToolsInformationGatheringEnum.p0f: 'p0f',
  KaliToolsInformationGatheringEnum.qsslcaudit: 'qsslcaudit',
  KaliToolsInformationGatheringEnum.reconNg: 'recon-ng',
  KaliToolsInformationGatheringEnum.smbmap: 'smbmap',
  KaliToolsInformationGatheringEnum.smtpUserEnum: 'smtp-user-enum',
  KaliToolsInformationGatheringEnum.snmpcheck: 'snmpcheck',
  KaliToolsInformationGatheringEnum.ssldump: 'ssldump',
  KaliToolsInformationGatheringEnum.sslh: 'sslh',
  KaliToolsInformationGatheringEnum.sslscan: 'sslscan',
  KaliToolsInformationGatheringEnum.sslyze: 'sslyze',
  KaliToolsInformationGatheringEnum.swaks: 'swaks',
  KaliToolsInformationGatheringEnum.thcIpv6: 'thc-ipv6',
  KaliToolsInformationGatheringEnum.theharvester: 'theharvester',
  KaliToolsInformationGatheringEnum.tlssled: 'tlssled',
  KaliToolsInformationGatheringEnum.twofi: 'twofi',
  KaliToolsInformationGatheringEnum.unicornscan: 'unicornscan',
  KaliToolsInformationGatheringEnum.urlcrazy: 'urlcrazy',
  KaliToolsInformationGatheringEnum.wafw00f: 'wafw00f',
  KaliToolsInformationGatheringEnum.zenmap: 'zenmap',
};

/// The extension `KaliToolsInformationGatheringEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsInformationGatheringEnumExt on KaliToolsInformationGatheringEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsInformationGatheringMap[this]!;
    }
  }
}

/// Call `selectKaliToolsInformationGatheringToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-information-gathering` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsInformationGatheringToInstall() =>
    selectToolsToInstall<KaliToolsInformationGatheringEnum>(
      groupName: 'kali-tools-information-gathering',
      values: KaliToolsInformationGatheringEnum.values,
      packageNameGetter: (e) => e.package,
    );
