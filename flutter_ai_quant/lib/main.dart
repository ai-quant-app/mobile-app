import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}
