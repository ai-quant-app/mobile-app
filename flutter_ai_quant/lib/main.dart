import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
// import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:device_preview/device_preview.dart';

import 'package:flutter_ai_quant/common/set_up/get_it.dart';
import 'package:flutter_ai_quant/common/set_up/routers.dart';

import 'package:flutter_ai_quant/ai_quant/main_screen.dart';

final GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
  // );

  await SetupGetIt.manageGetIt();
  await SetupRoutes.manageRoutes();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      onGenerateRoute: getIt.get<FluroRouter>().generator,
      theme: ThemeData(
        primaryColor: Color(0xFFF0F2FC),
        backgroundColor: Color(0xFF062D52),
      ),
      home: MainScreen(),
    );
  }
}
