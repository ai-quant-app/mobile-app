import 'package:fluro/fluro.dart';
import 'package:flutter_ai_quant/main.dart';

class SetupGetIt {
  static Future manageGetIt() async {
    getIt.registerLazySingleton<FluroRouter>(() => FluroRouter());
  }
}
