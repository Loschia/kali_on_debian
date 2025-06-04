import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list for Top 10 Kali tools and a selector to install them interactively.
///
/// The enum `KaliToolsTop10Enum` defines supported packages.
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

/// The map `_kaliToolsTop10Map` associates each enum with its corresponding package name.
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

/// The extension `KaliToolsTop10EnumExt` exposes the resolved package name via the package getter.
extension KaliToolsTop10EnumExt on KaliToolsTop10Enum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsTop10Map[this]!;
    }
  }
}

/// Call `selectKaliToolsTop10ToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-top10` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsTop10ToInstall() => selectToolsToInstall<KaliToolsTop10Enum>(
  groupName: 'kali-tools-top10',
  values: KaliToolsTop10Enum.values,
  packageNameGetter: (e) => e.package,
);
