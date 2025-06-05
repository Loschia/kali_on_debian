import 'package:kali_on_debian/services/export.dart';

void help(int len, {String exit = 'go back'}) {
  print('\n💡 Help:');
  print('- Select tools using comma-separated indexes (e.g. 1,2,4-6)');
  print('- Use "~" before an index to mark for removal (e.g. ~1,~2,~4-6)');
  print('- You can mix install and remove in one line (e.g. 0-6,~7,~9,11)');
  print('- Note: packages will be installed first, then removed');
  print('- Use "$len" to install all tools');
  print('- Use "${len + 1}" to remove all tools');
  print('- Use "${len + 2}" to $exit');
  print('- Use "${len + 3}" to see help');
  print('\nInstalled packages will be in ${fontStyleInstalledPackage}this$fontStyleReset style');
  print('\nIt is highly recommended to not use "Remove all" to remove packages to avoid breaking your pc.');
}
