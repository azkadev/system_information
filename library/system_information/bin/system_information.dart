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
import 'package:system_information/system_information.dart';

void main(List<String> args) async {
  final SystemInformation systemInformation = SystemInformation();
  await systemInformation.ensureInitialized(
    isUseStatic: true,
  );
  print(systemInformation.toMessage());

  /// if you want get drm or unique id persistant or same
  /// event app hash uninstalled or device reboot use this method
  /// i don't add in method or toMessage or toJson
  /// because this method is privacy or not everyone can show
  /// becasue this library has design to cross platform
  /// and i use this in bot so if you want get device drm
  /// copy code bellow
  final drmPersistantData = await systemInformation.getDeviceDrmId();
  print(drmPersistantData);

  /// persistant data only work on android and ios
  /// on ios i not tested but if you want
  /// you can help me donate for me buy the ios devices and macbook
  /// so i can bring more feature to apple devices
  /// 
  /// if you cange org or example
  /// com.example.example
  /// to
  /// com.app.your_name
  /// 
  /// this drm will change
  /// but if you change to com.example.example
  /// again your drm will same
  ///  
  /// sorry my english is bad
  
}
