import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali crypto-stego-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsCryptoStegoEnum` defines supported packages.
enum KaliToolsCryptoStegoEnum { aesfix, aeskeyfind, ccrypt, outguess, steghide, stegsnow }

/// The map `_kaliToolsCryptoStegoMap` associates each enum with its corresponding package name.
Map<KaliToolsCryptoStegoEnum, String> _kaliToolsCryptoStegoMap = {
  KaliToolsCryptoStegoEnum.aesfix: 'aesfix',
  KaliToolsCryptoStegoEnum.aeskeyfind: 'aeskeyfind',
  KaliToolsCryptoStegoEnum.ccrypt: 'ccrypt',
  KaliToolsCryptoStegoEnum.outguess: 'outguess',
  KaliToolsCryptoStegoEnum.steghide: 'steghide',
  KaliToolsCryptoStegoEnum.stegsnow: 'stegsnow',
};

/// The extension `KaliToolsCryptoStegoEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsCryptoStegoEnumExt on KaliToolsCryptoStegoEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsCryptoStegoMap[this]!;
    }
  }
}

/// Call `selectKaliToolsCryptoStegoToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-crypto-stego` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsCryptoStegoToInstall() =>
    selectToolsToInstall<KaliToolsCryptoStegoEnum>(
      groupName: 'kali-tools-crypto-stego',
      values: KaliToolsCryptoStegoEnum.values,
      packageNameGetter: (e) => e.package,
    );
