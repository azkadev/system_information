// ignore_for_file: empty_catches

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:general_lib/general_lib.dart';
import 'package:system_information/scheme/power_data.dart';
import 'package:io_universe/io_universe.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
PowerData getPowerData({
  bool isThrowOnError = false,
}) {
  try {
    if (Dart.isLinux || Dart.isAndroid) {
      final data = (Process.runSync(
        "lspower",
        [],
      ))
          .stdout
          .toString()
          .trim()
          .split("\n")
          .map((e) {
            try {
              return e.replaceAll(RegExp("([()%])", caseSensitive: false), "");
            } catch (e) {}
            return null;
          })
          .whereType<String>()
          .toList();

      PowerData powerData = PowerData.create();
      for (var element in data) {
        final List<String> datas = element.split(" ");
        if (datas.isEmpty) {
          continue;
        }
        final Args args = Args(datas);
        String name_first = args.arguments.first;
        String name_type = (args.after(name_first) ?? "").trim();

        if (RegExp("BAT", caseSensitive: false).hasMatch(name_type)) {
          if (name_first == "+") {
            powerData["is_charging"] = true;
          } else {
            powerData["is_charging"] = false;
          }
          powerData["level"] = num.tryParse(args.after(name_type) ?? "0");
          continue;
        }
      }

      return powerData;
    }
  } catch (e) {
    if (isThrowOnError) {
      rethrow;
    }
  }

  return PowerData.create();
}
