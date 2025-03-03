import 'dart:convert';

import 'package:system_information/scheme/scheme.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class SystemInformationBaseCore {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Future<String> getDeviceDrmId() async {
    throw UnimplementedError();
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SystemInformationData toJsonScheme() {
    return SystemInformationData(toJson());
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class SystemInformationBase implements SystemInformationBaseCore {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const SystemInformationBase();
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SystemInformationInvokeStatic<T> {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  T? data;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool isInitialized;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SystemInformationInvokeStatic({
    this.data,
    this.isInitialized = false,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
