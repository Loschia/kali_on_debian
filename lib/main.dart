import 'dart:io';
import 'package:kali_on_debian/exports.dart';

void main() async {
  final isReady = await setup();
  if (!isReady) return;

  await checkAllPackageVersions(KaliToolAllEnum.values.map((e) => e.package).toList());

  late String choice;

  void selectChoice() {
    stdout.write('\nEnter your choice (0-33): ');
    choice = stdin.readLineSync() ?? '';
  }

  final toolActions = <String, Future<void> Function()>{
    '0': selectKaliTools80211ToInstall,
    '1': selectKaliToolsBluetoothToInstall,
    '2': selectKaliToolsCryptoStegoToInstall,
    '3': selectKaliToolsDatabaseToInstall,
    '4': selectKaliToolsDetectToInstall,
    '5': selectKaliToolsExploitationToInstall,
    '6': selectKaliToolsForensicsToInstall,
    '7': selectKaliToolsFuzzingToInstall,
    '8': selectKaliToolsGPUToInstall,
    '9': selectKaliToolsHardwareToInstall,
    '10': selectKaliToolsIdentifyToInstall,
    '11': selectKaliToolsInformationGatheringToInstall,
    '12': selectKaliToolsPasswordsToInstall,
    '13': selectKaliToolsPostExploitationToInstall,
    '14': selectKaliToolsProtectToInstall,
    '15': selectKaliToolsRecoverToInstall,
    '16': selectKaliToolsReportingToInstall,
    '17': selectKaliToolsRespondToInstall,
    '18': selectKaliToolsReverseEngineeringToInstall,
    '19': selectKaliToolsRFIDToInstall,
    '20': selectKaliToolsSDRToInstall,
    '21': selectKaliToolsSniffingSpoofingToInstall,
    '22': selectKaliToolsSocialEngineeringToInstall,
    '23': selectKaliToolsTop10ToInstall,
    '24': selectKaliToolsVOIPToInstall,
    '25': selectKaliToolsVulnerabilityToInstall,
    '26': selectKaliToolsWebToInstall,
    '27': selectKaliToolsWindowsResourcesToInstall,
    '28': selectKaliToolsWirelessToInstall,
    '29': selectKaliToolsAllToInstall,
    '30': () async => await installPackages(KaliToolAllEnum.values.map((e) => e.package).toList()),
    '31': () async => await removePackages(KaliToolAllEnum.values.map((e) => e.package).toList()),
    '33': () async {
      help(30, exit: 'exit');
      selectChoice();
    },
  };

  while (true) {
    printTitle();
    print('\nSelect a Kali Tools group to install:');
    print(' 0. 802.11                        17. Respond');
    print(' 1. Bluetooth                     18. Reverse Engineering');
    print(' 2. Crypto stego                  19. RFID');
    print(' 3. Database                      20. SDR');
    print(' 4. Detect                        21. Sniffing Spoofing');
    print(' 5. Exploitation                  22. Social Engineering');
    print(' 6. Forensics                     23. Top 10');
    print(' 7. Fuzzing                       24. VOIP');
    print(' 8. GPU                           25. Vulnerability');
    print(' 9. Hardware                      26. Web');
    print('10. Identify                      27. Windows Resources');
    print('11. Information Gathering         28. Wireless');
    print('12. Passwords                     29. All');
    print('13. Post Exploitation             30. Install all');
    print('14. Protect                       31. Remove all');
    print('15. Recover                       32. Exit');
    print('16. Reporting                     33. Help');

    do {
      selectChoice();

      if (choice == '32') {
        return;
      } else if (toolActions.containsKey(choice)) {
        await toolActions[choice]!();
        break;
      } else {
        print('Invalid choice, try again.');
      }
    } while (true);
  }
}
