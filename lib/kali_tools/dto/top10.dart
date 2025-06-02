import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsTop10Enum {
  aircrackNg,
  burpsuite,
  hydra,
  john,
  metasploitFramework,
  netexec,
  nmap,
  responder,
  sqlmap,
  wireshark,
}

Map<KaliToolsTop10Enum, String> _kaliToolsTop10Map = {
  KaliToolsTop10Enum.aircrackNg: 'aircrack-ng',
  KaliToolsTop10Enum.burpsuite: 'burpsuite',
  KaliToolsTop10Enum.hydra: 'hydra',
  KaliToolsTop10Enum.john: 'john',
  KaliToolsTop10Enum.metasploitFramework: 'metasploit-framework',
  KaliToolsTop10Enum.netexec: 'netexec',
  KaliToolsTop10Enum.nmap: 'nmap',
  KaliToolsTop10Enum.responder: 'responder',
  KaliToolsTop10Enum.sqlmap: 'sqlmap',
  KaliToolsTop10Enum.wireshark: 'wireshark',
};

extension KaliToolsTop10EnumExt on KaliToolsTop10Enum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsTop10Map[this]!;
    }
  }
}

Future<void> selectKaliToolsTop10ToInstall() => selectToolsToInstall<KaliToolsTop10Enum>(
  groupName: 'kali-tools-top10',
  values: KaliToolsTop10Enum.values,
  packageNameGetter: (e) => e.package,
);
