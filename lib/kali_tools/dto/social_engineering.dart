import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsSocialEngineeringEnum { beefXss, maltego, msfpc, set, veil }

Map<KaliToolsSocialEngineeringEnum, String> _kaliToolsSocialEngineeringMap = {
  KaliToolsSocialEngineeringEnum.beefXss: 'beef-xss',
  KaliToolsSocialEngineeringEnum.maltego: 'maltego',
  KaliToolsSocialEngineeringEnum.msfpc: 'msfpc',
  KaliToolsSocialEngineeringEnum.set: 'set',
  KaliToolsSocialEngineeringEnum.veil: 'veil',
};

extension KaliToolsSocialEngineeringEnumExt on KaliToolsSocialEngineeringEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSocialEngineeringMap[this]!;
    }
  }
}

Future<void> selectKaliToolsSocialEngineeringToInstall() =>
    selectToolsToInstall<KaliToolsSocialEngineeringEnum>(
      groupName: 'kali-tools-social-engineering',
      values: KaliToolsSocialEngineeringEnum.values,
      packageNameGetter: (e) => e.package,
    );
