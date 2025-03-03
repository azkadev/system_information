// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class SystemInformationData extends JsonScheme {
  /// Generated
  SystemInformationData(super.rawData);

  /// return default special type @type
  /// "systemInformationData"
  static String get defaultDataSpecialType {
    return "systemInformationData";
  }

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "systemInformationData",
      "title": "",
      "os": "Ubuntu 23.10",
      "platform_type": "Linux",
      "arch": "x86_64",
      "host": "Modern 14 B5M REV:1.0 ",
      "kernel": "Linux 6.5.0-14-generic x86_64",
      "uptime": "6 Hours ",
      "shell": "zsh 5.9",
      "resolution": null,
      "de": null,
      "wm": "",
      "wm_theme": "",
      "theme": "",
      "icons": "",
      "terminal": "",
      "cpu": "AMD Ryzen 5 5500U with Radeon Graphics (12)",
      "gpu": "Advanced Micro Devices, Inc. [AMD/ATI] Lucienne",
      "network": "MEDIATEK Corp. MT7921K (RZ608) Wi-Fi 6E 80MHz",
      "disk":
          "Kingston Technology Company, Inc. OM8PCP Design-In PCIe 3 NVMe SSD (DRAM-less)",
      "power": "86% Charging",
      "ram_total": "15 GB",
      "ram_available": "8 GB",
      "ram_usage": "7 GB",
      "ram_cached": "6 GB",
      "swap_total": "7 GB",
      "swap_available": "7 GB",
      "swap_cache": "28 KB",
      "ram_commited": "16 GB",
      "ram_swap_total": "22 GB",
      "version": "",
      "device_name": "Realme 5",
      "total_bandwith_download": "136.97 MB",
      "total_bandwith_upload": "143.55 MB",
      "total_bandwith": "280.52 MB",
      "ram_usage_by_this_program": "271 MB",
      "executable_type": "cli",
      "uptime_program": "604 millisecond(s) ago",
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == systemInformationData
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

  /// create [SystemInformationData]
  /// Empty
  static SystemInformationData empty() {
    return SystemInformationData({});
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
  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set title(String? value) {
    rawData["title"] = value;
  }

  /// Generated
  String? get os {
    try {
      if (rawData["os"] is String == false) {
        return null;
      }
      return rawData["os"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set os(String? value) {
    rawData["os"] = value;
  }

  /// Generated
  String? get platform_type {
    try {
      if (rawData["platform_type"] is String == false) {
        return null;
      }
      return rawData["platform_type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set platform_type(String? value) {
    rawData["platform_type"] = value;
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
  String? get host {
    try {
      if (rawData["host"] is String == false) {
        return null;
      }
      return rawData["host"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set host(String? value) {
    rawData["host"] = value;
  }

  /// Generated
  String? get kernel {
    try {
      if (rawData["kernel"] is String == false) {
        return null;
      }
      return rawData["kernel"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set kernel(String? value) {
    rawData["kernel"] = value;
  }

  /// Generated
  String? get uptime {
    try {
      if (rawData["uptime"] is String == false) {
        return null;
      }
      return rawData["uptime"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set uptime(String? value) {
    rawData["uptime"] = value;
  }

  /// Generated
  String? get shell {
    try {
      if (rawData["shell"] is String == false) {
        return null;
      }
      return rawData["shell"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set shell(String? value) {
    rawData["shell"] = value;
  }

  /// Generated
  Object? get resolution {
    try {
      if (rawData["resolution"] is Object == false) {
        return null;
      }
      return rawData["resolution"] as Object;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set resolution(Object? value) {
    rawData["resolution"] = value;
  }

  /// Generated
  Object? get de {
    try {
      if (rawData["de"] is Object == false) {
        return null;
      }
      return rawData["de"] as Object;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set de(Object? value) {
    rawData["de"] = value;
  }

  /// Generated
  String? get wm {
    try {
      if (rawData["wm"] is String == false) {
        return null;
      }
      return rawData["wm"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set wm(String? value) {
    rawData["wm"] = value;
  }

  /// Generated
  String? get wm_theme {
    try {
      if (rawData["wm_theme"] is String == false) {
        return null;
      }
      return rawData["wm_theme"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set wm_theme(String? value) {
    rawData["wm_theme"] = value;
  }

  /// Generated
  String? get theme {
    try {
      if (rawData["theme"] is String == false) {
        return null;
      }
      return rawData["theme"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set theme(String? value) {
    rawData["theme"] = value;
  }

  /// Generated
  String? get icons {
    try {
      if (rawData["icons"] is String == false) {
        return null;
      }
      return rawData["icons"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set icons(String? value) {
    rawData["icons"] = value;
  }

  /// Generated
  String? get terminal {
    try {
      if (rawData["terminal"] is String == false) {
        return null;
      }
      return rawData["terminal"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set terminal(String? value) {
    rawData["terminal"] = value;
  }

  /// Generated
  String? get cpu {
    try {
      if (rawData["cpu"] is String == false) {
        return null;
      }
      return rawData["cpu"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set cpu(String? value) {
    rawData["cpu"] = value;
  }

  /// Generated
  String? get gpu {
    try {
      if (rawData["gpu"] is String == false) {
        return null;
      }
      return rawData["gpu"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set gpu(String? value) {
    rawData["gpu"] = value;
  }

  /// Generated
  String? get network {
    try {
      if (rawData["network"] is String == false) {
        return null;
      }
      return rawData["network"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set network(String? value) {
    rawData["network"] = value;
  }

  /// Generated
  String? get disk {
    try {
      if (rawData["disk"] is String == false) {
        return null;
      }
      return rawData["disk"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set disk(String? value) {
    rawData["disk"] = value;
  }

  /// Generated
  String? get power {
    try {
      if (rawData["power"] is String == false) {
        return null;
      }
      return rawData["power"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set power(String? value) {
    rawData["power"] = value;
  }

  /// Generated
  String? get ram_total {
    try {
      if (rawData["ram_total"] is String == false) {
        return null;
      }
      return rawData["ram_total"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_total(String? value) {
    rawData["ram_total"] = value;
  }

  /// Generated
  String? get ram_available {
    try {
      if (rawData["ram_available"] is String == false) {
        return null;
      }
      return rawData["ram_available"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_available(String? value) {
    rawData["ram_available"] = value;
  }

  /// Generated
  String? get ram_usage {
    try {
      if (rawData["ram_usage"] is String == false) {
        return null;
      }
      return rawData["ram_usage"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_usage(String? value) {
    rawData["ram_usage"] = value;
  }

  /// Generated
  String? get ram_cached {
    try {
      if (rawData["ram_cached"] is String == false) {
        return null;
      }
      return rawData["ram_cached"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_cached(String? value) {
    rawData["ram_cached"] = value;
  }

  /// Generated
  String? get swap_total {
    try {
      if (rawData["swap_total"] is String == false) {
        return null;
      }
      return rawData["swap_total"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set swap_total(String? value) {
    rawData["swap_total"] = value;
  }

  /// Generated
  String? get swap_available {
    try {
      if (rawData["swap_available"] is String == false) {
        return null;
      }
      return rawData["swap_available"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set swap_available(String? value) {
    rawData["swap_available"] = value;
  }

  /// Generated
  String? get swap_cache {
    try {
      if (rawData["swap_cache"] is String == false) {
        return null;
      }
      return rawData["swap_cache"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set swap_cache(String? value) {
    rawData["swap_cache"] = value;
  }

  /// Generated
  String? get ram_commited {
    try {
      if (rawData["ram_commited"] is String == false) {
        return null;
      }
      return rawData["ram_commited"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_commited(String? value) {
    rawData["ram_commited"] = value;
  }

  /// Generated
  String? get ram_swap_total {
    try {
      if (rawData["ram_swap_total"] is String == false) {
        return null;
      }
      return rawData["ram_swap_total"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_swap_total(String? value) {
    rawData["ram_swap_total"] = value;
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
  String? get device_name {
    try {
      if (rawData["device_name"] is String == false) {
        return null;
      }
      return rawData["device_name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set device_name(String? value) {
    rawData["device_name"] = value;
  }

  /// Generated
  String? get total_bandwith_download {
    try {
      if (rawData["total_bandwith_download"] is String == false) {
        return null;
      }
      return rawData["total_bandwith_download"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set total_bandwith_download(String? value) {
    rawData["total_bandwith_download"] = value;
  }

  /// Generated
  String? get total_bandwith_upload {
    try {
      if (rawData["total_bandwith_upload"] is String == false) {
        return null;
      }
      return rawData["total_bandwith_upload"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set total_bandwith_upload(String? value) {
    rawData["total_bandwith_upload"] = value;
  }

  /// Generated
  String? get total_bandwith {
    try {
      if (rawData["total_bandwith"] is String == false) {
        return null;
      }
      return rawData["total_bandwith"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set total_bandwith(String? value) {
    rawData["total_bandwith"] = value;
  }

  /// Generated
  String? get ram_usage_by_this_program {
    try {
      if (rawData["ram_usage_by_this_program"] is String == false) {
        return null;
      }
      return rawData["ram_usage_by_this_program"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ram_usage_by_this_program(String? value) {
    rawData["ram_usage_by_this_program"] = value;
  }

  /// Generated
  String? get executable_type {
    try {
      if (rawData["executable_type"] is String == false) {
        return null;
      }
      return rawData["executable_type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set executable_type(String? value) {
    rawData["executable_type"] = value;
  }

  /// Generated
  String? get uptime_program {
    try {
      if (rawData["uptime_program"] is String == false) {
        return null;
      }
      return rawData["uptime_program"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set uptime_program(String? value) {
    rawData["uptime_program"] = value;
  }

  /// Generated
  static SystemInformationData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "systemInformationData",
    String? title,
    String? os,
    String? platform_type,
    String? arch,
    String? host,
    String? kernel,
    String? uptime,
    String? shell,
    Object? resolution,
    Object? de,
    String? wm,
    String? wm_theme,
    String? theme,
    String? icons,
    String? terminal,
    String? cpu,
    String? gpu,
    String? network,
    String? disk,
    String? power,
    String? ram_total,
    String? ram_available,
    String? ram_usage,
    String? ram_cached,
    String? swap_total,
    String? swap_available,
    String? swap_cache,
    String? ram_commited,
    String? ram_swap_total,
    String? version,
    String? device_name,
    String? total_bandwith_download,
    String? total_bandwith_upload,
    String? total_bandwith,
    String? ram_usage_by_this_program,
    String? executable_type,
    String? uptime_program,
  }) {
    // SystemInformationData systemInformationData = SystemInformationData({
    final Map systemInformationData_data_create_json = {
      "@type": special_type,
      "title": title,
      "os": os,
      "platform_type": platform_type,
      "arch": arch,
      "host": host,
      "kernel": kernel,
      "uptime": uptime,
      "shell": shell,
      "resolution": resolution,
      "de": de,
      "wm": wm,
      "wm_theme": wm_theme,
      "theme": theme,
      "icons": icons,
      "terminal": terminal,
      "cpu": cpu,
      "gpu": gpu,
      "network": network,
      "disk": disk,
      "power": power,
      "ram_total": ram_total,
      "ram_available": ram_available,
      "ram_usage": ram_usage,
      "ram_cached": ram_cached,
      "swap_total": swap_total,
      "swap_available": swap_available,
      "swap_cache": swap_cache,
      "ram_commited": ram_commited,
      "ram_swap_total": ram_swap_total,
      "version": version,
      "device_name": device_name,
      "total_bandwith_download": total_bandwith_download,
      "total_bandwith_upload": total_bandwith_upload,
      "total_bandwith": total_bandwith,
      "ram_usage_by_this_program": ram_usage_by_this_program,
      "executable_type": executable_type,
      "uptime_program": uptime_program,
    };

    systemInformationData_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (systemInformationData_data_create_json.containsKey(key) == false) {
          systemInformationData_data_create_json[key] = value;
        }
      });
    }
    return SystemInformationData(systemInformationData_data_create_json);
  }
}
