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
