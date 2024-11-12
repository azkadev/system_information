import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:system_information/system_information.dart';

const SystemInformation systemInformation = SystemInformation();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await systemInformation.ensureInitialized(
    isUseStatic: false,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _deviceId = 'Unknown';

  @override
  void initState() {
    super.initState();
    initDeviceId();
  }

  Future<void> initDeviceId() async {
    String deviceId;
    try {
      deviceId = (await systemInformation.getDeviceDrmId());
    } on PlatformException {
      deviceId = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {
      _deviceId = deviceId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('System Information'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Device ID : \n$_deviceId',
                ),
                TextButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: _deviceId));
                  },
                  child: Text(
                    'Device ID : \n${_deviceId == "E8:69:51:49:DF:62:5A:EB:68:F5:8D:87:B1:02:FB:0B:10:A6:98:6D:A0:6E:F3:E8:01:18:CB:E5:49:95:4A:8F"}',
                  ),
                ),
                const Divider(height: 30, color: Colors.transparent),
                Builder(
                  builder: (context) {
                    String encoded = base64.encode(utf8.encode(_deviceId));

                    return Text("Device ID Encoded : \n$encoded");
                  },
                ),
                Text(
                  systemInformation.toMessage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
