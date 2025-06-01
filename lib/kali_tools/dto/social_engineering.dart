import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsSocialEngineeringEnum { beef_xss, maltego, msfpc, set, veil }

Map<KaliToolsSocialEngineeringEnum, String> _kaliToolsSocialEngineeringMap = {
  KaliToolsSocialEngineeringEnum.beef_xss: 'beef-xss',
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

Future<ToolSelectionResult> selectKaliToolsSocialEngineeringToInstall() =>
    selectToolsToInstall<KaliToolsSocialEngineeringEnum>(
      groupName: 'kali-tools-social-engineering',
      values: KaliToolsSocialEngineeringEnum.values,
      packageNameGetter: (e) => e.package,
    );
