import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ai_quant/ai_quant/chart_module/algorithm_trading/screen/algorithm_trading_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/basket_trade/screen/basket_trade_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/basket_trade_two/screen/basket_trade_two_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/buy/screen/buy_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/condition_command/screen/condition_command_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/sell/sell_screen.dart';

import 'package:flutter_ai_quant/main.dart';

class SetupRoutes {
  static Future manageRoutes() async {
    final FluroRouter router = getIt.get<FluroRouter>();
    await ChartRoutes.setupChartRoutes(router);
  }
}

class CategoryRoutes {}

class PriceListRoutes {}

class HomeRoutes {}

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

    router.define(
      "basket_trade_two_screen",
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
            BasketTradeTwoScreen(),
      ),
    );
  }
}

class SetCommandRoutes {}