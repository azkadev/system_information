// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, constant_identifier_names, unused_local_variable

library system_information;

// import 'package:filesize/filesize.dart';
import 'dart:async';
import 'dart:math';

import 'package:general_lib/general_lib.dart';
import 'package:system_information/base/base.dart';
import 'package:system_information/dart/cpu/cpu.dart';
import 'package:system_information/dart/memory/memory_core.dart';
import 'package:system_information/dart/network/bandwith_usage.dart';
import 'package:system_information/dart/os/os_core.dart';
import 'package:system_information/dart/power/power.dart';
import 'package:system_information/dart/power_consumtion/power_consumtion.dart';
import 'package:system_information/scheme/scheme.dart';
import "package:system_information/flutter/device_drm/device_drm.dart"
    as device_drm;
import 'base/system_information_base.dart' as sys_info;

final DateTime _date_start = DateTime.now();
final String _uniqueId = generateUuid(Random().nextInt(20) + 5);
typedef SystemInformationInvokeFunction<T> = T Function(T originValue);

T systemInformationInvokeFunctiondefaultValueFunction<T>(T originValue) {
  return originValue;
}

class SystemInformation extends SystemInformationBase {
  /// start
  static bool is_use_static = true;
  static SystemInformationInvokeFunction<String> onGetModel =
      systemInformationInvokeFunctiondefaultValueFunction<String>;
  static SystemInformationInvokeFunction<String> onGetTitle =
      systemInformationInvokeFunctiondefaultValueFunction<String>;

  static SystemInformationInvokeStatic<String> gpuStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> networkStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> diskStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> uptimeStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> kernelStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> shellStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> titleStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<Future<String>> archStatic =
      SystemInformationInvokeStatic();
  static SystemInformationInvokeStatic<String> modelStatic =
      SystemInformationInvokeStatic();

  /// end

  const SystemInformation();

  FutureOr<void> ensureInitialized({
    bool? isUseStatic,
    SystemInformationInvokeFunction<String>? onInvokeModel,
    SystemInformationInvokeFunction<String>? onInvokeTitle,
  }) async {
    if (isUseStatic != null) {
      is_use_static = isUseStatic;
    }
    if (onInvokeModel != null) {
      onGetModel = onInvokeModel;
    }
    if (onInvokeTitle != null) {
      onGetTitle = onInvokeTitle;
    }
  }

  DateTime get date_start => _date_start;
  String get uniqueId => _uniqueId;

  String? get get_executable_type {
    try {
      return Dart.executable_type.name;
    } catch (e) {
      return null;
    }
  }

  String? get get_gpu {
    return gpuStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return sys_info.gpuInfo;
      },
    );
  }

  String? get get_network {
    return networkStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return sys_info.networkInfo;
      },
    );
  }

  String? get get_disk {
    return diskStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return sys_info.diskInfo;
      },
    );
  }

  String? get get_power {
    try {
      final PowerData powerData = getPowerData();
      return "${powerData.level}% ${(powerData.is_charging == true) ? "Charging" : ""}";
    } catch (e) {
      return null;
    }
  }

  String? get get_uptime {
    return uptimeStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return sys_info.upTimeInfo;
      },
    );
  }

  String? get get_kernel {
    return kernelStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return sys_info.kernelInfo;
      },
    );
  }

  String? get get_shell {
    return shellStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return sys_info.shellInfo;
      },
    );
  }

  String? get get_title {
    return titleStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return onGetTitle(sys_info.titleInfo.trim());
      },
    );
  }

  Future<String?> get get_arch async {
    return archStatic.invoke(
      isUseStatic: is_use_static,
      onData: () async {
        return (await sys_info.archInfo());
      },
    );
  }

  String? get get_model {
    return modelStatic.invoke(
      isUseStatic: is_use_static,
      onData: () {
        return onGetModel(sys_info.modelInfo.trim());
      },
    );
  }

  int? get_ram_usage_by_pid({
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

  MemoryData? get get_ram_data {
    try {
      return getRamData();
    } catch (e) {
      return null;
    }
  }

  String? get get_power_consumtion {
    try {
      return powerConsumtion();
    } catch (e) {
      return null;
    }
  }

  (int download, int upload) get get_network_bandwith_usage {
    return getNetworkBandwithUsage();
  }

  (int download, int upload) get_network_bandwith_usage_by_pid({
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
    final (int bandwith_download_by_pid, bandwith_upload_by_pid) =
        get_network_bandwith_usage_by_pid(
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
      "uptime_program": DateTime.now()
          .extension_general_lib_countAgoFromDateTime(dateTime: date_start),
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
      "ram_usage": FileSize.filesize(
          size: (memory_ram.mem_total ?? 0) - (memory_ram.mem_available ?? 0)),
      "ram_cached": FileSize.filesize(size: (memory_ram.cached ?? 0)),
      "swap_total": FileSize.filesize(size: memory_ram.swap_total ?? 0),
      "swap_available": FileSize.filesize(size: memory_ram.swap_free ?? 0),
      "swap_cache": FileSize.filesize(size: memory_ram.swap_cached ?? 0),
      "ram_commited": FileSize.filesize(size: memory_ram.committed_a_s ?? 0),
      "ram_swap_total": FileSize.filesize(
          size: (memory_ram.swap_total ?? 0) + (memory_ram.mem_total ?? 0)),
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
      "program_unique_id": _uniqueId,
      "system_information_version": "0.0.0"
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
      String defaultValue =
          "${key.split("_").map((e) => e.toUpperCaseFirstData()).join(" ")}: ${value}";
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

  Stream<SystemInformationData> realtime({
    Duration? durationDelay,
  }) async* {
    yield toJsonScheme();
    await Future.delayed(durationDelay ?? Duration(seconds: 1));
    while (true) {
      await Future.delayed(durationDelay ?? Duration(seconds: 1));
      yield toJsonScheme();
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
