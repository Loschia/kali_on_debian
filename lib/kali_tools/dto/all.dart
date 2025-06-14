import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of all Kali tools and a selector to install them interactively.
///
/// The enum `KaliToolAllEnum` defines supported packages.
enum KaliToolAllEnum {
  above,
  aesfix,
  aeskeyfind,
  afflibTools,
  aflpp,
  aircrackNg,
  airgeddon,
  amass,
  apache2,
  apacheUsers,
  apktool,
  armitage,
  arping,
  iputilsArping,
  asleap,
  assetfinder,
  autopsy,
  bed,
  beefXss,
  bettercap,
  binwalk,
  blueHydra,
  bluelog,
  blueranger,
  bluesnarfer,
  bluez,
  bluezHcidump,
  braa,
  btscanner,
  bulkExtractor,
  bully,
  burpsuite,
  bytecodeViewer,
  cabextract,
  cadaver,
  ccrypt,
  cewl,
  chirp,
  chkrootkit,
  chntpw,
  ciscoAuditingTool,
  ciscoGlobalExploiter,
  ciscoOcs,
  ciscoTorch,
  clamav,
  clang,
  cmospwd,
  commix,
  copyRouterConfig,
  cowpatty,
  crackle,
  creddump7,
  crunch,
  cryptsetup,
  cryptsetupInitramfs,
  cryptsetupNukePassword,
  cutecom,
  cutycapt,
  cymothoa,
  darkstat,
  davtest,
  dbd,
  dc3dd,
  dcfldd,
  ddrescue,
  defaultMysqlServer,
  defectdojo,
  dex2jar,
  dhcpig,
  dirb,
  dirbuster,
  dmitry,
  dns2tcp,
  dnschef,
  dnsenum,
  dnsmap,
  dnsrecon,
  dnstracer,
  dnswalk,
  dotdotpwn,
  dradis,
  driftnet,
  dsniff,
  dumpzilla,
  eapmd5pass,
  edbDebugger,
  enum4linux,
  enumiax,
  ettercapGraphical,
  ettercapTextOnly,
  ewfTools,
  exe2hexbat,
  exifprobe,
  exiv2,
  exploitdb,
  ext3grep,
  ext4magic,
  extundelete,
  eyewitness,
  faraday,
  fcrackzip,
  fernWifiCracker,
  ferretSidejack,
  fierce,
  fiked,
  firewalk,
  firmwareModKit,
  flashrom,
  foremost,
  forensicArtifacts,
  forensicsColorize,
  fping,
  fragrouter,
  freeradiusWpe,
  freerdp3X11,
  ftester,
  fwbuilder,
  galleta,
  gdb,
  ghidra,
  gnuradio,
  gpart,
  gparted,
  gppDecrypt,
  gqrxSdr,
  grAirModes,
  grIqbal,
  grOsmosdr,
  grokevt,
  guymager,
  gvm,
  hackrf,
  hakrawler,
  hamsterSidejack,
  hashIdentifier,
  hashcat,
  hashcatUtils,
  hashdeep,
  hashid,
  hashrat,
  hbNoneypot,
  heartleech,
  hexinject,
  hostapdWpe,
  hping3,
  httprint,
  httrack,
  hydra,
  hyperion,
  iaxflood,
  ikeScan,
  impacketScripts,
  inetsim,
  inspectrum,
  intrace,
  inviteflood,
  iodine,
  irpas,
  isrEvilgrade,
  iw,
  jadx,
  javasnoop,
  jbossAutopwn,
  jdGui,
  john,
  johnny,
  joomscan,
  jsqlInjection,
  kaliAutopilot,
  kalibrateRtl,
  kismet,
  laudanum,
  lbd,
  legion,
  libfindrtp,
  libfreefareBin,
  libhivexBin,
  libnfcBin,
  libsmaliJava,
  lvm2,
  lynis,
  macRobber,
  macchanger,
  magicrescue,
  maltego,
  maryam,
  maskprocessor,
  masscan,
  md5deep,
  mdbtools,
  mdk3,
  mdk4,
  medusa,
  memdump,
  metacam,
  metagoofil,
  metasploitFramework,
  mfcuk,
  mfoc,
  mfterm,
  mimikatz,
  minicom,
  miredo,
  missidentify,
  mitmproxy,
  msfpc,
  multimonNg,
  myrescue,
  nasm,
  nasty,
  nbtscan,
  ncat,
  ncatW32,
  ncrack,
  netexec,
  netdiscover,
  netmask,
  netsniffNg,
  nikto,
  nipperNg,
  nishang,
  nmap,
  oclgausscrack,
  ohrwurm,
  ollydbg,
  onesixtyone,
  openocd,
  ophcrack,
  ophcrackCli,
  oscanner,
  osrframework,
  otrace,
  outguess,
  owaspMantraFf,
  p0f,
  pack,
  pack2,
  padbuster,
  paros,
  parted,
  pasco,
  passingTheHash,
  patator,
  pdfParser,
  pdfcrack,
  pdfid,
  peass,
  php,
  phpMysql,
  pipal,
  pixiewps,
  plaso,
  polenum,
  powercat,
  powersploit,
  protosSip,
  proxmark3,
  proxychains4,
  proxytunnel,
  pstUtils,
  ptunnel,
  pwnat,
  python3Capstone,
  python3Cfdatetime,
  python3Dfvfs,
  python3Dfwinreg,
  python3Distorm3,
  qemuSystemX86,
  qemuUser,
  qsslcaudit,
  radare2,
  rainbowcrack,
  rarcrack,
  rcrackiMt,
  readpe,
  reaver,
  rebind,
  reconNg,
  recordmydesktop,
  recoverdm,
  recoverjpeg,
  redfang,
  redsocks,
  reglookup,
  regripper,
  rephrase,
  responder,
  rfcat,
  rfdump,
  rfkill,
  rifiuti,
  rifiuti2,
  rizinCutter,
  rkhunter,
  rsakeyfind,
  rsmangler,
  rtpbreak,
  rtpflood,
  rtpinsertsound,
  rtpmixsound,
  rzGhidra,
  safecopy,
  sakis3g,
  samdump2,
  sbd,
  scalpel,
  scroungeNtfs,
  sctpscan,
  seclists,
  secureSocketFunnelingWindowsBinaries,
  sentrypeer,
  set,
  sevenZip,
  sfuzz,
  shellnoob,
  shellter,
  sidguesser,
  siege,
  siparmyknife,
  sipcrack,
  sipp,
  sipsak,
  sipvicious,
  skipfish,
  sleuthkit,
  slowhttptest,
  smbmap,
  smtpUserEnum,
  sniffjoke,
  snmpcheck,
  spectools,
  spiderfoot,
  spike,
  spooftooph,
  sqldict,
  sqlitebrowser,
  sqlmap,
  sqlninja,
  sqlsus,
  ssdeep,
  ssldump,
  sslh,
  sslscan,
  sslsniff,
  sslsplit,
  sslyze,
  statsprocessor,
  steghide,
  stegsnow,
  stunnel4,
  sucrack,
  swaks,
  t50,
  tcpdump,
  tcpflow,
  tcpick,
  tcpreplay,
  termineter,
  tftpd32,
  thcIpv6,
  thcPptpBruter,
  thcSslDos,
  theharvester,
  tiger,
  tlssled,
  tnscmd10g,
  truecrack,
  twofi,
  ubertooth,
  udptunnel,
  uhdHost,
  uhdImages,
  undbx,
  unhide,
  unicornscan,
  uniscan,
  unixPrivescCheck,
  unrar,
  unar,
  upxUcl,
  urlcrazy,
  veil,
  vinetto,
  voiphopper,
  wafw00f,
  wapiti,
  watobo,
  wce,
  webacoo,
  webscarab,
  webshells,
  weevely,
  wfuzz,
  whatweb,
  wifiHoney,
  wifite,
  windowsBinaries,
  windowsPrivescCheck,
  winregfs,
  wireshark,
  witnessme,
  wordlists,
  wpscan,
  xmount,
  xplico,
  xsser,
  yara,
  yersinia,
  zaproxy,
  zenmap,
}

/// The map `_kaliToolAllMap` associates each enum with its corresponding package name.
Map<KaliToolAllEnum, String> _kaliToolAllMap = {
  KaliToolAllEnum.above: 'above',
  KaliToolAllEnum.aesfix: 'aesfix',
  KaliToolAllEnum.aeskeyfind: 'aeskeyfind',
  KaliToolAllEnum.afflibTools: 'afflib-tools',
  KaliToolAllEnum.aflpp: 'afl++',
  KaliToolAllEnum.aircrackNg: 'aircrack-ng',
  KaliToolAllEnum.airgeddon: 'airgeddon',
  KaliToolAllEnum.amass: 'amass',
  KaliToolAllEnum.apache2: 'apache2',
  KaliToolAllEnum.apacheUsers: 'apache-users',
  KaliToolAllEnum.apktool: 'apktool',
  KaliToolAllEnum.armitage: 'armitage',
  KaliToolAllEnum.arping: 'arping',
  KaliToolAllEnum.iputilsArping: 'iputils-arping',
  KaliToolAllEnum.asleap: 'asleap',
  KaliToolAllEnum.assetfinder: 'assetfinder',
  KaliToolAllEnum.autopsy: 'autopsy',
  KaliToolAllEnum.bed: 'bed',
  KaliToolAllEnum.beefXss: 'beef-xss',
  KaliToolAllEnum.bettercap: 'bettercap',
  KaliToolAllEnum.binwalk: 'binwalk',
  KaliToolAllEnum.blueHydra: 'blue-hydra',
  KaliToolAllEnum.bluelog: 'bluelog',
  KaliToolAllEnum.blueranger: 'blueranger',
  KaliToolAllEnum.bluesnarfer: 'bluesnarfer',
  KaliToolAllEnum.bluez: 'bluez',
  KaliToolAllEnum.bluezHcidump: 'bluez-hcidump',
  KaliToolAllEnum.braa: 'braa',
  KaliToolAllEnum.btscanner: 'btscanner',
  KaliToolAllEnum.bulkExtractor: 'bulk-extractor',
  KaliToolAllEnum.bully: 'bully',
  KaliToolAllEnum.burpsuite: 'burpsuite',
  KaliToolAllEnum.bytecodeViewer: 'bytecode-viewer',
  KaliToolAllEnum.cabextract: 'cabextract',
  KaliToolAllEnum.cadaver: 'cadaver',
  KaliToolAllEnum.ccrypt: 'ccrypt',
  KaliToolAllEnum.cewl: 'cewl',
  KaliToolAllEnum.chirp: 'chirp',
  KaliToolAllEnum.chkrootkit: 'chkrootkit',
  KaliToolAllEnum.chntpw: 'chntpw',
  KaliToolAllEnum.ciscoAuditingTool: 'cisco-auditing-tool',
  KaliToolAllEnum.ciscoGlobalExploiter: 'cisco-global-exploiter',
  KaliToolAllEnum.ciscoOcs: 'cisco-ocs',
  KaliToolAllEnum.ciscoTorch: 'cisco-torch',
  KaliToolAllEnum.clamav: 'clamav',
  KaliToolAllEnum.clang: 'clang',
  KaliToolAllEnum.cmospwd: 'cmospwd',
  KaliToolAllEnum.commix: 'commix',
  KaliToolAllEnum.copyRouterConfig: 'copy-router-config',
  KaliToolAllEnum.cowpatty: 'cowpatty',
  KaliToolAllEnum.crackle: 'crackle',
  KaliToolAllEnum.creddump7: 'creddump7',
  KaliToolAllEnum.crunch: 'crunch',
  KaliToolAllEnum.cryptsetup: 'cryptsetup',
  KaliToolAllEnum.cryptsetupInitramfs: 'cryptsetup-initramfs',
  KaliToolAllEnum.cryptsetupNukePassword: 'cryptsetup-nuke-password',
  KaliToolAllEnum.cutecom: 'cutecom',
  KaliToolAllEnum.cutycapt: 'cutycapt',
  KaliToolAllEnum.cymothoa: 'cymothoa',
  KaliToolAllEnum.darkstat: 'darkstat',
  KaliToolAllEnum.davtest: 'davtest',
  KaliToolAllEnum.dbd: 'dbd',
  KaliToolAllEnum.dc3dd: 'dc3dd',
  KaliToolAllEnum.dcfldd: 'dcfldd',
  KaliToolAllEnum.ddrescue: 'ddrescue',
  KaliToolAllEnum.defaultMysqlServer: 'default-mysql-server',
  KaliToolAllEnum.defectdojo: 'defectdojo',
  KaliToolAllEnum.dex2jar: 'dex2jar',
  KaliToolAllEnum.dhcpig: 'dhcpig',
  KaliToolAllEnum.dirb: 'dirb',
  KaliToolAllEnum.dirbuster: 'dirbuster',
  KaliToolAllEnum.dmitry: 'dmitry',
  KaliToolAllEnum.dns2tcp: 'dns2tcp',
  KaliToolAllEnum.dnschef: 'dnschef',
  KaliToolAllEnum.dnsenum: 'dnsenum',
  KaliToolAllEnum.dnsmap: 'dnsmap',
  KaliToolAllEnum.dnsrecon: 'dnsrecon',
  KaliToolAllEnum.dnstracer: 'dnstracer',
  KaliToolAllEnum.dnswalk: 'dnswalk',
  KaliToolAllEnum.dotdotpwn: 'dotdotpwn',
  KaliToolAllEnum.dradis: 'dradis',
  KaliToolAllEnum.driftnet: 'driftnet',
  KaliToolAllEnum.dsniff: 'dsniff',
  KaliToolAllEnum.dumpzilla: 'dumpzilla',
  KaliToolAllEnum.eapmd5pass: 'eapmd5pass',
  KaliToolAllEnum.edbDebugger: 'edb-debugger',
  KaliToolAllEnum.enum4linux: 'enum4linux',
  KaliToolAllEnum.enumiax: 'enumiax',
  KaliToolAllEnum.ettercapGraphical: 'ettercap-graphical',
  KaliToolAllEnum.ettercapTextOnly: 'ettercap-text-only',
  KaliToolAllEnum.ewfTools: 'ewf-tools',
  KaliToolAllEnum.exe2hexbat: 'exe2hexbat',
  KaliToolAllEnum.exifprobe: 'exifprobe',
  KaliToolAllEnum.exiv2: 'exiv2',
  KaliToolAllEnum.exploitdb: 'exploitdb',
  KaliToolAllEnum.ext3grep: 'ext3grep',
  KaliToolAllEnum.ext4magic: 'ext4magic',
  KaliToolAllEnum.extundelete: 'extundelete',
  KaliToolAllEnum.eyewitness: 'eyewitness',
  KaliToolAllEnum.faraday: 'faraday',
  KaliToolAllEnum.fcrackzip: 'fcrackzip',
  KaliToolAllEnum.fernWifiCracker: 'fern-wifi-cracker',
  KaliToolAllEnum.ferretSidejack: 'ferret-sidejack',
  KaliToolAllEnum.fierce: 'fierce',
  KaliToolAllEnum.fiked: 'fiked',
  KaliToolAllEnum.firewalk: 'firewalk',
  KaliToolAllEnum.firmwareModKit: 'firmware-mod-kit',
  KaliToolAllEnum.flashrom: 'flashrom',
  KaliToolAllEnum.foremost: 'foremost',
  KaliToolAllEnum.forensicArtifacts: 'forensic-artifacts',
  KaliToolAllEnum.forensicsColorize: 'forensics-colorize',
  KaliToolAllEnum.fping: 'fping',
  KaliToolAllEnum.fragrouter: 'fragrouter',
  KaliToolAllEnum.freeradiusWpe: 'freeradius-wpe',
  KaliToolAllEnum.freerdp3X11: 'freerdp3-x11',
  KaliToolAllEnum.ftester: 'ftester',
  KaliToolAllEnum.fwbuilder: 'fwbuilder',
  KaliToolAllEnum.galleta: 'galleta',
  KaliToolAllEnum.gdb: 'gdb',
  KaliToolAllEnum.ghidra: 'ghidra',
  KaliToolAllEnum.gnuradio: 'gnuradio',
  KaliToolAllEnum.gpart: 'gpart',
  KaliToolAllEnum.gparted: 'gparted',
  KaliToolAllEnum.gppDecrypt: 'gpp-decrypt',
  KaliToolAllEnum.gqrxSdr: 'gqrx-sdr',
  KaliToolAllEnum.grAirModes: 'gr-air-modes',
  KaliToolAllEnum.grIqbal: 'gr-iqbal',
  KaliToolAllEnum.grOsmosdr: 'gr-osmosdr',
  KaliToolAllEnum.grokevt: 'grokevt',
  KaliToolAllEnum.guymager: 'guymager',
  KaliToolAllEnum.gvm: 'gvm',
  KaliToolAllEnum.hackrf: 'hackrf',
  KaliToolAllEnum.hakrawler: 'hakrawler',
  KaliToolAllEnum.hamsterSidejack: 'hamster-sidejack',
  KaliToolAllEnum.hashIdentifier: 'hash-identifier',
  KaliToolAllEnum.hashcat: 'hashcat',
  KaliToolAllEnum.hashcatUtils: 'hashcat-utils',
  KaliToolAllEnum.hashdeep: 'hashdeep',
  KaliToolAllEnum.hashid: 'hashid',
  KaliToolAllEnum.hashrat: 'hashrat',
  KaliToolAllEnum.hbNoneypot: 'hb-honeypot',
  KaliToolAllEnum.heartleech: 'heartleech',
  KaliToolAllEnum.hexinject: 'hexinject',
  KaliToolAllEnum.hostapdWpe: 'hostapd-wpe',
  KaliToolAllEnum.hping3: 'hping3',
  KaliToolAllEnum.httprint: 'httprint',
  KaliToolAllEnum.httrack: 'httrack',
  KaliToolAllEnum.hydra: 'hydra',
  KaliToolAllEnum.hyperion: 'hyperion',
  KaliToolAllEnum.iaxflood: 'iaxflood',
  KaliToolAllEnum.ikeScan: 'ike-scan',
  KaliToolAllEnum.impacketScripts: 'impacket-scripts',
  KaliToolAllEnum.inetsim: 'inetsim',
  KaliToolAllEnum.inspectrum: 'inspectrum',
  KaliToolAllEnum.intrace: 'intrace',
  KaliToolAllEnum.inviteflood: 'inviteflood',
  KaliToolAllEnum.iodine: 'iodine',
  KaliToolAllEnum.irpas: 'irpas',
  KaliToolAllEnum.isrEvilgrade: 'isr-evilgrade',
  KaliToolAllEnum.iw: 'iw',
  KaliToolAllEnum.jadx: 'jadx',
  KaliToolAllEnum.javasnoop: 'javasnoop',
  KaliToolAllEnum.jbossAutopwn: 'jboss-autopwn',
  KaliToolAllEnum.jdGui: 'jd-gui',
  KaliToolAllEnum.john: 'john',
  KaliToolAllEnum.johnny: 'johnny',
  KaliToolAllEnum.joomscan: 'joomscan',
  KaliToolAllEnum.jsqlInjection: 'jsql-injection',
  KaliToolAllEnum.kaliAutopilot: 'kali-autopilot',
  KaliToolAllEnum.kalibrateRtl: 'kalibrate-rtl',
  KaliToolAllEnum.kismet: 'kismet',
  KaliToolAllEnum.laudanum: 'laudanum',
  KaliToolAllEnum.lbd: 'lbd',
  KaliToolAllEnum.legion: 'legion',
  KaliToolAllEnum.libfindrtp: 'libfindrtp',
  KaliToolAllEnum.libfreefareBin: 'libfreefare-bin',
  KaliToolAllEnum.libhivexBin: 'libhivex-bin',
  KaliToolAllEnum.libnfcBin: 'libnfc-bin',
  KaliToolAllEnum.libsmaliJava: 'libsmali-java',
  KaliToolAllEnum.lvm2: 'lvm2',
  KaliToolAllEnum.lynis: 'lynis',
  KaliToolAllEnum.macRobber: 'mac-robber',
  KaliToolAllEnum.macchanger: 'macchanger',
  KaliToolAllEnum.magicrescue: 'magicrescue',
  KaliToolAllEnum.maltego: 'maltego',
  KaliToolAllEnum.maryam: 'maryam',
  KaliToolAllEnum.maskprocessor: 'maskprocessor',
  KaliToolAllEnum.masscan: 'masscan',
  KaliToolAllEnum.md5deep: 'md5deep',
  KaliToolAllEnum.mdbtools: 'mdbtools',
  KaliToolAllEnum.mdk3: 'mdk3',
  KaliToolAllEnum.mdk4: 'mdk4',
  KaliToolAllEnum.medusa: 'medusa',
  KaliToolAllEnum.memdump: 'memdump',
  KaliToolAllEnum.metacam: 'metacam',
  KaliToolAllEnum.metagoofil: 'metagoofil',
  KaliToolAllEnum.metasploitFramework: 'metasploit-framework',
  KaliToolAllEnum.mfcuk: 'mfcuk',
  KaliToolAllEnum.mfoc: 'mfoc',
  KaliToolAllEnum.mfterm: 'mfterm',
  KaliToolAllEnum.mimikatz: 'mimikatz',
  KaliToolAllEnum.minicom: 'minicom',
  KaliToolAllEnum.miredo: 'miredo',
  KaliToolAllEnum.missidentify: 'missidentify',
  KaliToolAllEnum.mitmproxy: 'mitmproxy',
  KaliToolAllEnum.msfpc: 'msfpc',
  KaliToolAllEnum.multimonNg: 'multimon-ng',
  KaliToolAllEnum.myrescue: 'myrescue',
  KaliToolAllEnum.nasm: 'nasm',
  KaliToolAllEnum.nasty: 'nasty',
  KaliToolAllEnum.nbtscan: 'nbtscan',
  KaliToolAllEnum.ncat: 'ncat',
  KaliToolAllEnum.ncatW32: 'ncat-w32',
  KaliToolAllEnum.ncrack: 'ncrack',
  KaliToolAllEnum.netdiscover: 'netdiscover',
  KaliToolAllEnum.netexec: 'netexec',
  KaliToolAllEnum.netmask: 'netmask',
  KaliToolAllEnum.netsniffNg: 'netsniff-ng',
  KaliToolAllEnum.nikto: 'nikto',
  KaliToolAllEnum.nipperNg: 'nipper-ng',
  KaliToolAllEnum.nishang: 'nishang',
  KaliToolAllEnum.nmap: 'nmap',
  KaliToolAllEnum.oclgausscrack: 'oclgausscrack',
  KaliToolAllEnum.ohrwurm: 'ohrwurm',
  KaliToolAllEnum.ollydbg: 'ollydbg',
  KaliToolAllEnum.onesixtyone: 'onesixtyone',
  KaliToolAllEnum.openocd: 'openocd',
  KaliToolAllEnum.ophcrack: 'ophcrack',
  KaliToolAllEnum.ophcrackCli: 'ophcrack-cli',
  KaliToolAllEnum.oscanner: 'oscanner',
  KaliToolAllEnum.osrframework: 'osrframework',
  KaliToolAllEnum.otrace: '0trace',
  KaliToolAllEnum.outguess: 'outguess',
  KaliToolAllEnum.owaspMantraFf: 'owasp-mantra-ff',
  KaliToolAllEnum.p0f: 'p0f',
  KaliToolAllEnum.pack2: 'pack2',
  KaliToolAllEnum.pack: 'pack',
  KaliToolAllEnum.padbuster: 'padbuster',
  KaliToolAllEnum.paros: 'paros',
  KaliToolAllEnum.parted: 'parted',
  KaliToolAllEnum.pasco: 'pasco',
  KaliToolAllEnum.passingTheHash: 'passing-the-hash',
  KaliToolAllEnum.patator: 'patator',
  KaliToolAllEnum.pdfParser: 'pdf-parser',
  KaliToolAllEnum.pdfcrack: 'pdfcrack',
  KaliToolAllEnum.pdfid: 'pdfid',
  KaliToolAllEnum.peass: 'peass',
  KaliToolAllEnum.php: 'php',
  KaliToolAllEnum.phpMysql: 'php-mysql',
  KaliToolAllEnum.pipal: 'pipal',
  KaliToolAllEnum.pixiewps: 'pixiewps',
  KaliToolAllEnum.plaso: 'plaso',
  KaliToolAllEnum.polenum: 'polenum',
  KaliToolAllEnum.powercat: 'powercat',
  KaliToolAllEnum.powersploit: 'powersploit',
  KaliToolAllEnum.protosSip: 'protos-sip',
  KaliToolAllEnum.proxmark3: 'proxmark3',
  KaliToolAllEnum.proxychains4: 'proxychains4',
  KaliToolAllEnum.proxytunnel: 'proxytunnel',
  KaliToolAllEnum.pstUtils: 'pst-utils',
  KaliToolAllEnum.ptunnel: 'ptunnel',
  KaliToolAllEnum.pwnat: 'pwnat',
  KaliToolAllEnum.python3Capstone: 'python3-capstone',
  KaliToolAllEnum.python3Cfdatetime: 'python3-dfdatetime',
  KaliToolAllEnum.python3Dfvfs: 'python3-dfvfs',
  KaliToolAllEnum.python3Dfwinreg: 'python3-dfwinreg',
  KaliToolAllEnum.python3Distorm3: 'python3-distorm3',
  KaliToolAllEnum.qemuSystemX86: 'qemu-system-x86',
  KaliToolAllEnum.qemuUser: 'qemu-user',
  KaliToolAllEnum.qsslcaudit: 'qsslcaudit',
  KaliToolAllEnum.radare2: 'radare2',
  KaliToolAllEnum.rainbowcrack: 'rainbowcrack',
  KaliToolAllEnum.rarcrack: 'rarcrack',
  KaliToolAllEnum.rcrackiMt: 'rcracki-mt',
  KaliToolAllEnum.readpe: 'readpe',
  KaliToolAllEnum.reaver: 'reaver',
  KaliToolAllEnum.rebind: 'rebind',
  KaliToolAllEnum.reconNg: 'recon-ng',
  KaliToolAllEnum.recordmydesktop: 'recordmydesktop',
  KaliToolAllEnum.recoverdm: 'recoverdm',
  KaliToolAllEnum.recoverjpeg: 'recoverjpeg',
  KaliToolAllEnum.redfang: 'redfang',
  KaliToolAllEnum.redsocks: 'redsocks',
  KaliToolAllEnum.reglookup: 'reglookup',
  KaliToolAllEnum.regripper: 'regripper',
  KaliToolAllEnum.rephrase: 'rephrase',
  KaliToolAllEnum.responder: 'responder',
  KaliToolAllEnum.rfcat: 'rfcat',
  KaliToolAllEnum.rfdump: 'rfdump',
  KaliToolAllEnum.rfkill: 'rfkill',
  KaliToolAllEnum.rifiuti2: 'rifiuti2',
  KaliToolAllEnum.rifiuti: 'rifiuti',
  KaliToolAllEnum.rizinCutter: 'rizin-cutter',
  KaliToolAllEnum.rkhunter: 'rkhunter',
  KaliToolAllEnum.rsakeyfind: 'rsakeyfind',
  KaliToolAllEnum.rsmangler: 'rsmangler',
  KaliToolAllEnum.rtpbreak: 'rtpbreak',
  KaliToolAllEnum.rtpflood: 'rtpflood',
  KaliToolAllEnum.rtpinsertsound: 'rtpinsertsound',
  KaliToolAllEnum.rtpmixsound: 'rtpmixsound',
  KaliToolAllEnum.rzGhidra: 'rz-ghidra',
  KaliToolAllEnum.safecopy: 'safecopy',
  KaliToolAllEnum.sakis3g: 'sakis3g',
  KaliToolAllEnum.samdump2: 'samdump2',
  KaliToolAllEnum.sbd: 'sbd',
  KaliToolAllEnum.scalpel: 'scalpel',
  KaliToolAllEnum.scroungeNtfs: 'scrounge-ntfs',
  KaliToolAllEnum.sctpscan: 'sctpscan',
  KaliToolAllEnum.seclists: 'seclists',
  KaliToolAllEnum.secureSocketFunnelingWindowsBinaries: 'secure-socket-funneling-windows-binaries',
  KaliToolAllEnum.sentrypeer: 'sentrypeer',
  KaliToolAllEnum.set: 'set',
  KaliToolAllEnum.sevenZip: '7zip',
  KaliToolAllEnum.sfuzz: 'sfuzz',
  KaliToolAllEnum.shellnoob: 'shellnoob',
  KaliToolAllEnum.shellter: 'shellter',
  KaliToolAllEnum.sidguesser: 'sidguesser',
  KaliToolAllEnum.siege: 'siege',
  KaliToolAllEnum.siparmyknife: 'siparmyknife',
  KaliToolAllEnum.sipcrack: 'sipcrack',
  KaliToolAllEnum.sipp: 'sipp',
  KaliToolAllEnum.sipsak: 'sipsak',
  KaliToolAllEnum.sipvicious: 'sipvicious',
  KaliToolAllEnum.skipfish: 'skipfish',
  KaliToolAllEnum.sleuthkit: 'sleuthkit',
  KaliToolAllEnum.slowhttptest: 'slowhttptest',
  KaliToolAllEnum.smbmap: 'smbmap',
  KaliToolAllEnum.smtpUserEnum: 'smtp-user-enum',
  KaliToolAllEnum.sniffjoke: 'sniffjoke',
  KaliToolAllEnum.snmpcheck: 'snmpcheck',
  KaliToolAllEnum.spectools: 'spectools',
  KaliToolAllEnum.spiderfoot: 'spiderfoot',
  KaliToolAllEnum.spike: 'spike',
  KaliToolAllEnum.spooftooph: 'spooftooph',
  KaliToolAllEnum.sqldict: 'sqldict',
  KaliToolAllEnum.sqlitebrowser: 'sqlitebrowser',
  KaliToolAllEnum.sqlmap: 'sqlmap',
  KaliToolAllEnum.sqlninja: 'sqlninja',
  KaliToolAllEnum.sqlsus: 'sqlsus',
  KaliToolAllEnum.ssdeep: 'ssdeep',
  KaliToolAllEnum.ssldump: 'ssldump',
  KaliToolAllEnum.sslh: 'sslh',
  KaliToolAllEnum.sslscan: 'sslscan',
  KaliToolAllEnum.sslsniff: 'sslsniff',
  KaliToolAllEnum.sslsplit: 'sslsplit',
  KaliToolAllEnum.sslyze: 'sslyze',
  KaliToolAllEnum.statsprocessor: 'statsprocessor',
  KaliToolAllEnum.steghide: 'steghide',
  KaliToolAllEnum.stegsnow: 'stegsnow',
  KaliToolAllEnum.stunnel4: 'stunnel4',
  KaliToolAllEnum.sucrack: 'sucrack',
  KaliToolAllEnum.swaks: 'swaks',
  KaliToolAllEnum.t50: 't50',
  KaliToolAllEnum.tcpdump: 'tcpdump',
  KaliToolAllEnum.tcpflow: 'tcpflow',
  KaliToolAllEnum.tcpick: 'tcpick',
  KaliToolAllEnum.tcpreplay: 'tcpreplay',
  KaliToolAllEnum.termineter: 'termineter',
  KaliToolAllEnum.tftpd32: 'tftpd32',
  KaliToolAllEnum.thcIpv6: 'thc-ipv6',
  KaliToolAllEnum.thcPptpBruter: 'thc-pptp-bruter',
  KaliToolAllEnum.thcSslDos: 'thc-ssl-dos',
  KaliToolAllEnum.theharvester: 'theharvester',
  KaliToolAllEnum.tiger: 'tiger',
  KaliToolAllEnum.tlssled: 'tlssled',
  KaliToolAllEnum.tnscmd10g: 'tnscmd10g',
  KaliToolAllEnum.truecrack: 'truecrack',
  KaliToolAllEnum.twofi: 'twofi',
  KaliToolAllEnum.ubertooth: 'ubertooth',
  KaliToolAllEnum.udptunnel: 'udptunnel',
  KaliToolAllEnum.uhdHost: 'uhd-host',
  KaliToolAllEnum.uhdImages: 'uhd-images',
  KaliToolAllEnum.undbx: 'undbx',
  KaliToolAllEnum.unhide: 'unhide',
  KaliToolAllEnum.unicornscan: 'unicornscan',
  KaliToolAllEnum.uniscan: 'uniscan',
  KaliToolAllEnum.unixPrivescCheck: 'unix-privesc-check',
  KaliToolAllEnum.unrar: 'unrar',
  KaliToolAllEnum.unar: 'unar',
  KaliToolAllEnum.upxUcl: 'upx-ucl',
  KaliToolAllEnum.urlcrazy: 'urlcrazy',
  KaliToolAllEnum.veil: 'veil',
  KaliToolAllEnum.vinetto: 'vinetto',
  KaliToolAllEnum.voiphopper: 'voiphopper',
  KaliToolAllEnum.wafw00f: 'wafw00f',
  KaliToolAllEnum.wapiti: 'wapiti',
  KaliToolAllEnum.watobo: 'watobo',
  KaliToolAllEnum.wce: 'wce',
  KaliToolAllEnum.webacoo: 'webacoo',
  KaliToolAllEnum.webscarab: 'webscarab',
  KaliToolAllEnum.webshells: 'webshells',
  KaliToolAllEnum.weevely: 'weevely',
  KaliToolAllEnum.wfuzz: 'wfuzz',
  KaliToolAllEnum.whatweb: 'whatweb',
  KaliToolAllEnum.wifiHoney: 'wifi-honey',
  KaliToolAllEnum.wifite: 'wifite',
  KaliToolAllEnum.windowsBinaries: 'windows-binaries',
  KaliToolAllEnum.windowsPrivescCheck: 'windows-privesc-check',
  KaliToolAllEnum.winregfs: 'winregfs',
  KaliToolAllEnum.wireshark: 'wireshark',
  KaliToolAllEnum.witnessme: 'witnessme',
  KaliToolAllEnum.wordlists: 'wordlists',
  KaliToolAllEnum.wpscan: 'wpscan',
  KaliToolAllEnum.xmount: 'xmount',
  KaliToolAllEnum.xplico: 'xplico',
  KaliToolAllEnum.xsser: 'xsser',
  KaliToolAllEnum.yara: 'yara',
  KaliToolAllEnum.yersinia: 'yersinia',
  KaliToolAllEnum.zaproxy: 'zaproxy',
  KaliToolAllEnum.zenmap: 'zenmap',
};

/// The extension `KaliToolAllExt` exposes the resolved package name via the package getter.
extension KaliToolAllExt on KaliToolAllEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolAllMap[this]!;
    }
  }
}

/// Call `selectKaliToolsAllToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-all` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsAllToInstall() => selectToolsToInstall<KaliToolAllEnum>(
  groupName: 'kali-tools-all',
  values: KaliToolAllEnum.values,
  packageNameGetter: (e) => e.package,
);
