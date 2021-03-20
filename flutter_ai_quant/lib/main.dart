import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'modules/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
      theme: ThemeData(
        primaryColor: Color(0xFFF0F2FC),
        backgroundColor: Color(0xFF062D52),
      ),
      home: MainScreen(),
    );
  }
}
