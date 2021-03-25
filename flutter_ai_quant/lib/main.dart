import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
import 'package:get_it/get_it.dart';
import 'package:device_preview/device_preview.dart';

import 'package:flutter_ai_quant/commons/common_routes/common_setup.dart';

import 'modules/main_screen.dart';

final GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CommonSetup.manageGetIt();
  await CommonSetup.manageRoutes();

  runApp(
    DevicePreview(
      enabled: true,
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
