import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_root_detection/flutter_root_detection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool rooted, developerMode, isOnEmulator, amIReverseEngineered;

  bool get checking =>
      rooted == null &&
      developerMode == null &&
      isOnEmulator == null &&
      amIReverseEngineered == null;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool rooted = true,
        developerMode = true,
        isOnEmulator = true,
        amIReverseEngineered = true;

    try {
      rooted = await flutterRootDetection.rooted;
      developerMode = await flutterRootDetection.developerMode;
      isOnEmulator = await flutterRootDetection.onEmulator;
      amIReverseEngineered = await flutterRootDetection.amIReverseEngineered;

      if (mounted) {
        setState(() {
          this.rooted = rooted;
          this.developerMode = developerMode;
          this.isOnEmulator = isOnEmulator;
          this.amIReverseEngineered = amIReverseEngineered;
        });
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Root Detection'),
        ),
        body: Center(
          child: checking
              ? CircularProgressIndicator()
              : Text('Rooted = ${rooted ? 'YES' : 'NO'}\n'
                  'Dev Mode = ${developerMode ? 'YES' : 'NO'}\n'
                  'Emulator = ${isOnEmulator ? 'YES' : 'NO'}\n'
                  'Reverse Engineered = ${amIReverseEngineered ? 'YES' : 'NO'}'),
        ),
      ),
    );
  }
}
