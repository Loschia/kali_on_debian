void help(int len, {String exit = 'go back'}) {
  print('\n💡 Help:');
  print('- Use comma-separated indexes (e.g. 1,2,4-6)');
  print('- Use "$len" to install all tools');
  print('- Use "${len + 1}" to remove all tools');
  print('- Use "${len + 2}" to $exit');
  print('- Use "${len + 3}" to see help\n');
}
