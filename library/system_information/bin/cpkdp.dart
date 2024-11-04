import 'package:general_lib/general_lib.dart';
import 'package:system_information/dart/dart.dart';

void main(List<String> args) {
  // Timer.periodic(Duration(seconds: 1), (s) async {
  //   await SystemInformation.get_arch;
  // });
  SystemInformation.realtimeToJson().listen((event) {
    event.printPretty();
  });
}
