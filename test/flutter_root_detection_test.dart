import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_root_detection/flutter_root_detection.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_root_detection');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'rooted')
        return true;
      else if (methodCall.method == 'developerMode') return 0;
      return null;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('rooted', () async {
    expect(await flutterRootDetection.rooted, true);
  });

  test('amIJailbrokenWithFailedChecks', () async {
    expect(await flutterRootDetection.amIJailbrokenWithFailedChecks, true);
  });

  test('onEmulator', () async {
    expect(await flutterRootDetection.onEmulator, true);
  });

  test('developerMode', () async {
    expect(await flutterRootDetection.developerMode, false);
  });
}
