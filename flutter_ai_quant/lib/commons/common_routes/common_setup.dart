import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ai_quant/modules/chart/routes/chart_routes.dart';
import 'package:flutter_ai_quant/modules/chart/screens/buy_screen.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class CommonSetup {
  static Future manageRoutes() async {
    final FluroRouter router = getIt.get<FluroRouter>();

    // await ChartRoutes.setupChartRoutes(router);
    router.define(
      "BuyScreen",
      handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
            return BuyScreen();
          }),
    );

    // router.define(
    //   "sell_screen",
    //   handler: Handler(
    //       handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    //         return SellScreen();
    //       }),
    // );
    //
    // router.define(
    //   "condition_command_screen",
    //   handler: Handler(
    //       handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    //         return ConditionCommandScreen();
    //       }),
    // );
    //
    // router.define(
    //   "algorithm_trading_screen",
    //   handler: Handler(
    //       handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    //         return AlgorithmTradingScreen();
    //       }),
    // );
  }

  static Future manageGetIt() async {
    getIt.registerLazySingleton<FluroRouter>(() => FluroRouter());
  }
}
