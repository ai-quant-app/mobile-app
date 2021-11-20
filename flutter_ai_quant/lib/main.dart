import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_ai_quant/common/set_up/get_it.dart';
import 'package:flutter_ai_quant/common/set_up/routers.dart';

import 'package:flutter_ai_quant/ai_quant/main_screen.dart';

final GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SetupGetIt.manageGetIt();
  await SetupRoutes.manageRoutes();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: getIt.get<FluroRouter>().generator,
      // theme: ThemeData(
      //   primaryColor: Color(0xFFF0F2FC),
      //   backgroundColor: Color(0xFF062D52),
      // ),
      home: MainScreen(),
    );
  }
}
