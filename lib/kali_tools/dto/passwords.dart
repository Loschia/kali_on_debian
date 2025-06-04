import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali passwords-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsPasswordsEnum` defines supported packages.
enum KaliToolsPasswordsEnum {
  cewl,
  chntpw,
  ciscoAuditingTool,
  cmospwd,
  crackle,
  creddump7,
  crunch,
  fcrackzip,
  freerdp3X11,
  gppDecrypt,
  hashIdentifier,
  hashcat,
  hashcatUtils,
  hashid,
  hydra,
  john,
  johnny,
  maskprocessor,
  medusa,
  mimikatz,
  ncrack,
  onesixtyone,
  ophcrack,
  ophcrackCli,
  pack,
  pack2,
  passingTheHash,
  patator,
  pdfcrack,
  pipal,
  polenum,
  rainbowcrack,
  rarcrack,
  rcrackiMt,
  rsmangler,
  samdump2,
  seclists,
  sipcrack,
  sipvicious,
  smbmap,
  sqldict,
  statsprocessor,
  sucrack,
  thcPptpBruter,
  truecrack,
  twofi,
  wordlists,
}

/// The map `_kaliToolsPasswordsMap` associates each enum with its corresponding package name.
Map<KaliToolsPasswordsEnum, String> _kaliToolsPasswordsMap = {
  KaliToolsPasswordsEnum.cewl: 'cewl',
  KaliToolsPasswordsEnum.chntpw: 'chntpw',
  KaliToolsPasswordsEnum.ciscoAuditingTool: 'cisco-auditing-tool',
  KaliToolsPasswordsEnum.cmospwd: 'cmospwd',
  KaliToolsPasswordsEnum.crackle: 'crackle',
  KaliToolsPasswordsEnum.creddump7: 'creddump7',
  KaliToolsPasswordsEnum.crunch: 'crunch',
  KaliToolsPasswordsEnum.fcrackzip: 'fcrackzip',
  KaliToolsPasswordsEnum.freerdp3X11: 'freerdp3-x11',
  KaliToolsPasswordsEnum.gppDecrypt: 'gpp-decrypt',
  KaliToolsPasswordsEnum.hashIdentifier: 'hash-identifier',
  KaliToolsPasswordsEnum.hashcat: 'hashcat',
  KaliToolsPasswordsEnum.hashcatUtils: 'hashcat-utils',
  KaliToolsPasswordsEnum.hashid: 'hashid',
  KaliToolsPasswordsEnum.hydra: 'hydra',
  KaliToolsPasswordsEnum.john: 'john',
  KaliToolsPasswordsEnum.johnny: 'johnny',
  KaliToolsPasswordsEnum.maskprocessor: 'maskprocessor',
  KaliToolsPasswordsEnum.medusa: 'medusa',
  KaliToolsPasswordsEnum.mimikatz: 'mimikatz',
  KaliToolsPasswordsEnum.ncrack: 'ncrack',
  KaliToolsPasswordsEnum.onesixtyone: 'onesixtyone',
  KaliToolsPasswordsEnum.ophcrack: 'ophcrack',
  KaliToolsPasswordsEnum.ophcrackCli: 'ophcrack-cli',
  KaliToolsPasswordsEnum.pack: 'pack',
  KaliToolsPasswordsEnum.pack2: 'pack2',
  KaliToolsPasswordsEnum.passingTheHash: 'passing-the-hash',
  KaliToolsPasswordsEnum.patator: 'patator',
  KaliToolsPasswordsEnum.pdfcrack: 'pdfcrack',
  KaliToolsPasswordsEnum.pipal: 'pipal',
  KaliToolsPasswordsEnum.polenum: 'polenum',
  KaliToolsPasswordsEnum.rainbowcrack: 'rainbowcrack',
  KaliToolsPasswordsEnum.rarcrack: 'rarcrack',
  KaliToolsPasswordsEnum.rcrackiMt: 'rcracki-mt',
  KaliToolsPasswordsEnum.rsmangler: 'rsmangler',
  KaliToolsPasswordsEnum.samdump2: 'samdump2',
  KaliToolsPasswordsEnum.seclists: 'seclists',
  KaliToolsPasswordsEnum.sipcrack: 'sipcrack',
  KaliToolsPasswordsEnum.sipvicious: 'sipvicious',
  KaliToolsPasswordsEnum.smbmap: 'smbmap',
  KaliToolsPasswordsEnum.sqldict: 'sqldict',
  KaliToolsPasswordsEnum.statsprocessor: 'statsprocessor',
  KaliToolsPasswordsEnum.sucrack: 'sucrack',
  KaliToolsPasswordsEnum.thcPptpBruter: 'thc-pptp-bruter',
  KaliToolsPasswordsEnum.truecrack: 'truecrack',
  KaliToolsPasswordsEnum.twofi: 'twofi',
  KaliToolsPasswordsEnum.wordlists: 'wordlists',
};

/// The extension `KaliToolsPasswordsEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsPasswordsEnumExt on KaliToolsPasswordsEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsPasswordsMap[this]!;
    }
  }
}

/// Call `selectKaliToolsPasswordsToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-passwords` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsPasswordsToInstall() => selectToolsToInstall<KaliToolsPasswordsEnum>(
  groupName: 'kali-tools-passwords',
  values: KaliToolsPasswordsEnum.values,
  packageNameGetter: (e) => e.package,
);
