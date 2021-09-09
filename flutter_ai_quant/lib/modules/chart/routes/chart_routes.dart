import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';

import 'package:flutter_ai_quant/modules/chart/screens/buy_screen.dart';
import 'package:flutter_ai_quant/modules/chart/screens/sell_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/algorithm_trading/screen/algorithm_trading_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/chart/screen/order_basket_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/condition_command/screen/condition_command_screen.dart';

class ChartRoutes {
  static Future setupChartRoutes(FluroRouter router) async {
    router.define(
      "buy_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
              BuyScreen()),
    );

    router.define(
      "sell_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
            SellScreen(),
      ),
    );

    router.define(
      "condition_command_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
            ConditionCommandScreen(),
      ),
    );

    router.define(
      "algorithm_trading_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
            AlgorithmTradingScreen(),
      ),
    );

    router.define(
      "order_basket_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
            OrderBasket(),
      ),
    );
  }
}
