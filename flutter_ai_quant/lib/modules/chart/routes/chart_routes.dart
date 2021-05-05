import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';

import 'package:flutter_ai_quant/modules/chart/screens/buy_screen.dart';
import 'package:flutter_ai_quant/modules/chart/screens/sell_screen.dart';
import 'package:flutter_ai_quant/modules/chart/screens/basket_trade_screen.dart';
import 'package:flutter_ai_quant/modules/chart/screens/algorithm_trading_screen.dart';
import 'package:flutter_ai_quant/modules/chart/screens/condition_command_screen.dart';

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
      "basket_trade_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
            BasketTradeScreen(),
      ),
    );
  }
}
