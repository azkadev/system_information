// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, constant_identifier_names, unused_local_variable

library system_information;

// import 'package:filesize/filesize.dart';
import 'dart:async';

import 'package:general_lib/general_lib.dart';
import 'package:system_information/base/base.dart';
import 'package:system_information/dart/cpu/cpu.dart';
import 'package:system_information/dart/memory/memory_core.dart';
import 'package:system_information/dart/network/bandwith_usage.dart';
import 'package:system_information/dart/os/os_core.dart';
import 'package:system_information/dart/power/power.dart';
import 'package:system_information/dart/power_consumtion/power_consumtion.dart';
import 'package:system_information/scheme/scheme.dart';
import "package:system_information/flutter/device_drm/device_drm.dart" as device_drm;
import 'base/system_information_base.dart' as sys_info;

final DateTime _date_start = DateTime.now();

class SystemInformation extends SystemInformationBase {
  static DateTime get date_start => _date_start;
  static bool is_use_static = true;

  const SystemInformation();

  FutureOr<void> ensureInitialized({
    required bool isUseStatic,
  }) async {
    SystemInformation.is_use_static = isUseStatic;

  } 

  static String? get_gpu_static;
  static bool is_init_get_gpu = false;
  static String? get get_gpu {
    try {
      if (is_use_static) {
        if (is_init_get_gpu) {
          return get_gpu_static;
        }
        get_gpu_static = sys_info.gpuInfo;
        is_init_get_gpu = true;
        return get_gpu_static;
      }
      return sys_info.gpuInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get_network_static;
  static bool is_init_get_network = false;
  static String? get get_network {
    try {
      if (is_use_static) {
        if (is_init_get_network) {
          return get_network_static;
        }
        get_network_static = sys_info.networkInfo;
        is_init_get_network = true;
        return get_network_static;
      }
      return sys_info.networkInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get_disk_static;
  static bool is_init_get_disk = false;
  static String? get get_disk {
    try {
      if (is_use_static) {
        if (is_init_get_disk) {
          return get_disk_static;
        }
        get_disk_static = sys_info.diskInfo;
        is_init_get_disk = true;
        return get_disk_static;
      }
      return sys_info.diskInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get get_power {
    try {
      final PowerData powerData = getPowerData();
      return "${powerData.level}% ${(powerData.is_charging == true) ? "Charging" : ""}";
    } catch (e) {
      return null;
    }
  }

  static String? get_uptime_static;
  static bool is_init_get_uptime = false;
  static String? get get_uptime {
    try {
      if (is_use_static) {
        if (is_init_get_uptime) {
          return get_uptime_static;
        }
        get_uptime_static = sys_info.upTimeInfo;
        is_init_get_uptime = true;
        return get_uptime_static;
      }
      return sys_info.upTimeInfo;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static String? get_kernel_static;
  static bool is_init_get_kernel = false;

  static String? get get_kernel {
    try {
      if (is_use_static) {
        if (is_init_get_kernel) {
          return get_kernel_static;
        }
        get_kernel_static = sys_info.kernelInfo;
        is_init_get_kernel = true;
        return get_kernel_static;
      }
      return sys_info.kernelInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get_shell_static;
  static bool is_init_get_shell = false;

  static String? get get_shell {
    try {
      if (is_use_static) {
        if (is_init_get_shell) {
          return get_shell_static;
        }
        get_shell_static = sys_info.shellInfo;
        is_init_get_shell = true;
        return get_shell_static;
      }
      return sys_info.shellInfo;
    } catch (e) {
      return null;
    }
  }

  static String Function(String origin_model) onGetTitle = (String originModel) {
    return originModel;
  };
  static String? get_title_static;
  static bool is_init_get_title = false;

  static String? get get_title {
    try {
      if (is_use_static) {
        if (is_init_get_title) {
          return get_title_static;
        }
        get_title_static = onGetTitle(sys_info.titleInfo.trim());
        is_init_get_title = true;
        return get_title_static;
      }
      return onGetTitle(sys_info.titleInfo.trim());
    } catch (e) {
      try {
        return sys_info.titleInfo.trim();
      } catch (e) {
        return null;
      }
    }
  }

  static String? get_arch_static;
  static bool is_init_get_arch = false;
  static Future<String?> get get_arch async {
    try {
      if (is_use_static) {
        if (is_init_get_arch) {
          return get_arch_static;
        }
        get_arch_static = await sys_info.archInfo();
        is_init_get_arch = true;
        return get_arch_static;
      }
      return await sys_info.archInfo();
    } catch (e) {
      return null;
    }
  }

  static String? get get_executable_type {
    try {
      return Dart.executable_type.name;
    } catch (e) {
      return null;
    }
  }

  static String Function(String origin_model) onGetModel = (String originModel) {
    return originModel;
  };

  static String? get_model_static;
  static bool is_init_get_model = false;
  static String? get get_model {
    try {
      if (is_use_static) {
        if (is_init_get_model) {
          return get_model_static;
        }
        get_model_static = onGetModel(sys_info.modelInfo.trim());
        is_init_get_model = true;
        return get_model_static;
      }

      return onGetModel(sys_info.modelInfo.trim());
    } catch (e) {
      try {
        return sys_info.modelInfo.trim();
      } catch (e) {
        return null;
      }
    }
  }

  static int? get_ram_usage_by_pid({
    int? pidProcces,
  }) {
    try {
      return getRamUsageByPid(
        pid_procces: pidProcces,
      );
    } catch (e) {
      return null;
    }
  }

  static MemoryData? get get_ram_data {
    try {
      return getRamData();
    } catch (e) {
      return null;
    }
  }

  static String? get get_power_consumtion {
    try {
      return powerConsumtion();
    } catch (e) {
      return null;
    }
  }

  static (int download, int upload) get get_network_bandwith_usage {
    return getNetworkBandwithUsage();
  }

  static (int download, int upload) get_network_bandwith_usage_by_pid({
    int? pidProcces,
  }) {
    return getNetworkBandwithUsageByPid(
      pidProcces: pidProcces,
    );
  }

  @override
  Map<String, String?> toJson({
    int? pidProcces,
  }) {
    final OperatingSystemData operatingSystemData = getOperatingSystemData();
    final CpuData cpuData = getCpuData();
    final MemoryData memory_ram = get_ram_data ?? MemoryData({});
//     {
//     "OS": "Ubuntu 23.10 x86_64",
//     "Host": "Modern 14 B5M REV:1.0",
//     "Kernel": "6.5.0-13-generic",
//     "Uptime": "5 days, 4 hours, 26 mins",
//     "Packages": "2123 (dpkg), 18 (flatpak), 16 (snap)",
//     "Shell": "zsh 5.9",
//     "Resolution": "1920x1080",
//     "DE": "GNOME 45.0",
//     "WM": "Mutter",
//     "WM Theme": "WhiteSur-Dark",
//     "Theme": "WhiteSur-Dark [GTK2/3]",
//     "Icons": "BigSur-Originals [GTK2/3]",
//     "Terminal": "gnome-terminal",
//     "CPU": "AMD Ryzen 5 5500U with Radeon Graphics (12) @ 4.056GHz",
//     "GPU": "AMD ATI 03:00.0   Lucienne",
//     "GPU": "AMD ATI 03:00.0 Lucienne",
//     "Memory": "11383MiB / 15338MiB",
//     "Version": "7.1.0"
// }
    final (int bandwith_download, bandwith_upload) = get_network_bandwith_usage;
    final (int bandwith_download_by_pid, bandwith_upload_by_pid) = get_network_bandwith_usage_by_pid(
      pidProcces: pidProcces,
    );
    // get_arch;
    final Map<String, String?> data = {
      "title": get_title,
      "os": operatingSystemData.name,
      "platform_type": () {
        if (Dart.isWeb) {
          return "Web";
        }

        if (Dart.isAndroid) {
          return "Android";
        }
        if (Dart.isFuchsia) {
          return "Fuchsia";
        }
        if (Dart.isLinux) {
          return "Linux";
        }

        if (Dart.isIOS) {
          return "iOS";
        }
        if (Dart.isMacOS) {
          return "macOS";
        }
        if (Dart.isWindows) {
          return "Windows";
        }
        return null;
      }(),
      "executable_type": get_executable_type,
      "arch": "",
      "host": get_model,
      "device_name": get_model,
      "kernel": get_kernel,
      "uptime_program": DateTime.now().extension_general_lib_countAgoFromDateTime(dateTime: date_start),
      "uptime": get_uptime.toString(),
      "shell": get_shell,
      "resolution": null,
      "de": null,
      "wm": "",
      "wm_theme": "",
      "theme": "",
      "icons": "",
      "terminal": "",
      "cpu": cpuData.name,
      "gpu": get_gpu,
      "network": get_network,
      "disk": get_disk,
      "power": get_power,
      "power_consumtion": get_power_consumtion,
      "ram_total": FileSize.filesize(
        size: memory_ram.mem_total ?? 0,
      ),
      "ram_available": FileSize.filesize(size: memory_ram.mem_available ?? 0),
      "ram_usage": FileSize.filesize(size: (memory_ram.mem_total ?? 0) - (memory_ram.mem_available ?? 0)),
      "ram_cached": FileSize.filesize(size: (memory_ram.cached ?? 0)),
      "swap_total": FileSize.filesize(size: memory_ram.swap_total ?? 0),
      "swap_available": FileSize.filesize(size: memory_ram.swap_free ?? 0),
      "swap_cache": FileSize.filesize(size: memory_ram.swap_cached ?? 0),
      "ram_commited": FileSize.filesize(size: memory_ram.committed_a_s ?? 0),
      "ram_swap_total": FileSize.filesize(size: (memory_ram.swap_total ?? 0) + (memory_ram.mem_total ?? 0)),
      "version": "",
      // "total_bandwith_download": bandwith_download,

      "total_bandwith_download": FileSize.filesize(
        size: bandwith_download,
      ),
      "total_bandwith_upload": FileSize.filesize(
        size: bandwith_upload,
      ),
      "total_bandwith": FileSize.filesize(
        size: bandwith_upload + bandwith_download,
      ),

      // "total_bandwith_download_by_this_program": FileSize.filesize(
      //   size: bandwith_download_by_pid,
      // ),
      // "total_bandwith_upload_by_this_program": FileSize.filesize(
      //   size: bandwith_upload_by_pid,
      // ),
      // "total_bandwith_by_this_program": FileSize.filesize(
      //   size: bandwith_upload_by_pid + bandwith_download_by_pid,
      // ),
      "ram_usage_by_this_program": FileSize.filesize(
        size: get_ram_usage_by_pid(
          pidProcces: pidProcces,
        ),
      ),
    };

    data.removeWhere((key, value) => value == null);

    data.removeWhere((key, value) {
      if (value != null && value.trim().isEmpty) {
        return true;
      }
      return false;
    });
    return data;
  }

  SystemInformationData toSystemInformationData({
    int? pidProcces,
  }) {
    return SystemInformationData(toJson(pidProcces: pidProcces));
  }

  // @override
  String toMessage({
    String title = "",
    List<String> ignores = const [],
    int? pidProcces,
    String Function(String key, String? value, String defaultValue)? rewrite,
  }) {
    String message = title;
    toJson(pidProcces: pidProcces).forEach((key, value) {
      value ??= "-";
      String defaultValue = "${key.split("_").map((e) => e.toUpperCaseFirstData()).join(" ")}: ${value}";
      if (rewrite != null) {
        message += rewrite.call(key, value, defaultValue);
      } else {
        if (ignores.contains(key)) {
          return;
        }
        message += "\n${defaultValue}";
      }
    });
    return message;
  }

  Stream<Map> realtimeToJson({
    Duration? durationDelay,
  }) async* {
    yield toJson();
    await Future.delayed(durationDelay ?? Duration(seconds: 1));
    while (true) {
      await Future.delayed(durationDelay ?? Duration(seconds: 1));
      yield toJson();
    }
  }

  @override
  Future<String> getDeviceDrmId() async { 
    return await device_drm.getDeviceDrmId();
  }

  @override
  SystemInformationData toJsonScheme() {
    return SystemInformationData(toJson());
  }
}