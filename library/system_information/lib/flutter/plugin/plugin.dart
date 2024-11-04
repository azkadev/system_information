// ignore_for_file: empty_catches

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:general_lib/general_lib.dart';

/// An implementation of [SystemInformationFlutterPlatform] that uses method channels.
class MethodChannelSystemInformationFlutter {
  static final methodChannel = const MethodChannel('system_information_flutter');

  /// only work for android and ios
  static FutureOr<String> getDeviceDrmId() async {
    try {
      if (Dart.isWeb) {
        return "";
      }
      if (Dart.isAndroid || Dart.isIOS) {
        return (await methodChannel.invokeMethod<String?>('getDeviceDrmId')) ?? "";
      }
    } catch (e) {
      return "";
    }
    return "";
  }
}
