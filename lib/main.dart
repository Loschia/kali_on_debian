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
    '31': () async {
      help(30, exit: 'exit');
      selectChoice();
    },
  };

  while (true) {
    printTitle();
    print('\nSelect a Kali Tools group to install:');
    print(' 0. 802.11                        16. Reporting');
    print(' 1. Bluetooth                     17. Respond');
    print(' 2. Crypto stego                  18. Reverse Engineering');
    print(' 3. Database                      19. RFID');
    print(' 4. Detect                        20. SDR');
    print(' 5. Exploitation                  21. Sniffing Spoofing');
    print(' 6. Forensics                     22. Social Engineering');
    print(' 7. Fuzzing                       23. Top 10');
    print(' 8. GPU                           24. VOIP');
    print(' 9. Hardware                      25. Vulnerability');
    print('10. Identify                      26. Web');
    print('11. Information Gathering         27. Windows Resources');
    print('12. Passwords                     28. Wireless');
    print('13. Post Exploitation             29. All');
    print('14. Protect                       30. Exit');
    print('15. Recover                       31. Help');

    do {
      selectChoice();

      if (choice == '30') {
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
