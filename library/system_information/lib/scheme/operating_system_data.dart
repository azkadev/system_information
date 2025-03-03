// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class OperatingSystemData extends JsonScheme {
  /// Generated
  OperatingSystemData(super.rawData);

  /// return default special type @type
  /// "operatingSystemData"
  static String get defaultDataSpecialType {
    return "operatingSystemData";
  }

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "operatingSystemData",
      "name": "Ubuntu 23.10",
      "arch": "",
      "version": "",
      "full_name": "",
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == operatingSystemData
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [OperatingSystemData]
  /// Empty
  static OperatingSystemData empty() {
    return OperatingSystemData({});
  }

  /// Generated
  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_type(String? value) {
    rawData["@type"] = value;
  }

  /// Generated
  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set name(String? value) {
    rawData["name"] = value;
  }

  /// Generated
  String? get arch {
    try {
      if (rawData["arch"] is String == false) {
        return null;
      }
      return rawData["arch"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set arch(String? value) {
    rawData["arch"] = value;
  }

  /// Generated
  String? get version {
    try {
      if (rawData["version"] is String == false) {
        return null;
      }
      return rawData["version"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set version(String? value) {
    rawData["version"] = value;
  }

  /// Generated
  String? get full_name {
    try {
      if (rawData["full_name"] is String == false) {
        return null;
      }
      return rawData["full_name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set full_name(String? value) {
    rawData["full_name"] = value;
  }

  /// Generated
  static OperatingSystemData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "operatingSystemData",
    String? name,
    String? arch,
    String? version,
    String? full_name,
  }) {
    // OperatingSystemData operatingSystemData = OperatingSystemData({
    final Map operatingSystemData_data_create_json = {
      "@type": special_type,
      "name": name,
      "arch": arch,
      "version": version,
      "full_name": full_name,
    };

    operatingSystemData_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (operatingSystemData_data_create_json.containsKey(key) == false) {
          operatingSystemData_data_create_json[key] = value;
        }
      });
    }
    return OperatingSystemData(operatingSystemData_data_create_json);
  }
}
