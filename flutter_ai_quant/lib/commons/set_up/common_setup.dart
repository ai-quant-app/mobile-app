import 'package:fluro/fluro.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_ai_quant/modules/chart/routes/chart_routes.dart';

final GetIt getIt = GetIt.instance;

class CommonSetup {
  static Future manageRoutes() async {
    final FluroRouter router = getIt.get<FluroRouter>();
    await ChartRoutes.setupChartRoutes(router);
  }

  static Future manageGetIt() async {
    getIt.registerLazySingleton<FluroRouter>(() => FluroRouter());
  }
}
