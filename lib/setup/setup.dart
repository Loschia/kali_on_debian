import 'export.dart';

Future<bool> setup() async {
  final checkPKG = await checkApt();
  if (!checkPKG) {
    print('To use this script, you need to have APT installed.');
    return false;
  }

  final checkKali = await checkInstalledKali();
  if (!checkKali) {
    print('There was an error while adding the Kali repository.');
    print(
      'Make sure you are running this script with sudo and have a working internet connection.',
    );
    print('\nTo manually install the Kali repository, follow these steps:');
    print('1. Create the file: /etc/apt/sources.list.d/kali.list');
    print(
      '   Add this line:\n   deb [signed-by=/usr/share/keyrings/kali-archive-keyring.gpg] http://http.kali.org/kali kali-rolling main non-free contrib',
    );
    print('2. Download and convert the GPG key:');
    print('   wget -O /tmp/kali-key.asc https://archive.kali.org/archive-key.asc');
    print('   gpg --dearmor -o /usr/share/keyrings/kali-archive-keyring.gpg /tmp/kali-key.asc');
    print('3. Create the pin file: /etc/apt/preferences.d/kali.pref');
    print(
      '   Add the following lines:\n   Package: *\n   Pin: release a=kali-rolling\n   Pin-Priority: 50',
    );
    print('4. Update APT:');
    print('   sudo apt update');
    return false;
  }
  return true;
}
