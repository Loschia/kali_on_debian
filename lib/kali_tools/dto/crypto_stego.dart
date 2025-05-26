import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsCryptoStegoEnum { aesfix, aeskeyfind, ccrypt, outguess, steghide, stegsnow }

Map<KaliToolsCryptoStegoEnum, String> _kaliToolsCryptoStegoMap = {
  KaliToolsCryptoStegoEnum.aesfix: 'aesfix',
  KaliToolsCryptoStegoEnum.aeskeyfind: 'aeskeyfind',
  KaliToolsCryptoStegoEnum.ccrypt: 'ccrypt',
  KaliToolsCryptoStegoEnum.outguess: 'outguess',
  KaliToolsCryptoStegoEnum.steghide: 'steghide',
  KaliToolsCryptoStegoEnum.stegsnow: 'stegsnow',
};

extension KaliToolsCryptoStegoEnumExt on KaliToolsCryptoStegoEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsCryptoStegoMap[this]!;
    }
  }
}

Future<ToolSelectionResult> selectKaliToolsCryptoStegoToInstall() =>
    selectToolsToInstall<KaliToolsCryptoStegoEnum>(
      groupName: 'kali-tools-crypto-stego',
      values: KaliToolsCryptoStegoEnum.values,
      packageNameGetter: (e) => e.package,
    );
