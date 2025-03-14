// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class PowerData extends JsonScheme {
  /// Generated
  PowerData(super.rawData);

  /// return default special type @type
  /// "powerData"
  static String get defaultDataSpecialType {
    return "powerData";
  }

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "powerData", "level": 0, "is_charging": false};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == powerData
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

  /// create [PowerData]
  /// Empty
  static PowerData empty() {
    return PowerData({});
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
  num? get level {
    try {
      if (rawData["level"] is num == false) {
        return null;
      }
      return rawData["level"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set level(num? value) {
    rawData["level"] = value;
  }

  /// Generated
  bool? get is_charging {
    try {
      if (rawData["is_charging"] is bool == false) {
        return null;
      }
      return rawData["is_charging"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set is_charging(bool? value) {
    rawData["is_charging"] = value;
  }

  /// Generated
  static PowerData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "powerData",
    num? level,
    bool? is_charging,
  }) {
    // PowerData powerData = PowerData({
    final Map powerData_data_create_json = {
      "@type": special_type,
      "level": level,
      "is_charging": is_charging,
    };

    powerData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (powerData_data_create_json.containsKey(key) == false) {
          powerData_data_create_json[key] = value;
        }
      });
    }
    return PowerData(powerData_data_create_json);
  }
}
