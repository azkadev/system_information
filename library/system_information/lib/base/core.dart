import 'dart:convert';

 import 'package:system_information/scheme/scheme.dart';

abstract class SystemInformationBaseCore {
  Future<String> getDeviceDrmId() async {
    throw UnimplementedError();
  }

  SystemInformationData toJsonScheme() {
    return SystemInformationData(toJson());
  }

  Map toJson({
    int? pidProcces,
  }) {
    throw "";
  }

  @override
  String toString() {
    return json.encode(toJson());
  }
}

abstract class SystemInformationBase implements SystemInformationBaseCore {
  const SystemInformationBase();
}



class SystemInformationInvokeStatic<T> {
  T? data;
  bool isInitialized;
  SystemInformationInvokeStatic({
    this.data,
    this.isInitialized = false,
  });

  T? invoke({
    required bool isUseStatic,
    required T? Function() onData,
  }) {
    try {
      if (isUseStatic) {
        if (isInitialized) {
          return data;
        }
        data = onData();
        isInitialized = true;
        return data;
      }
      return onData();
    } catch (e) {
      return null;
    }
  }
}
