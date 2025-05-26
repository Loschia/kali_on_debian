import 'package:kali_on_debian/exports.dart';

void main() async {
  final isReady = await setup();
  if (!isReady) return;
}
