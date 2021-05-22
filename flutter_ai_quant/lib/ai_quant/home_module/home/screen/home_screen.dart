import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/widgets/home/news_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/drawer/drawer_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/categories_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/high_light_stocks_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/recommended_stocks_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: false,
    );
    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Image.asset(
            'assets/logo_transparent.png',
            height: 180.sp,
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFeff1fd),
          iconTheme: IconThemeData(color: Color(0xFF074986)),
          actions: [
            Icon(
              Icons.search,
              size: 80.sp,
            )
          ],
        ),
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HighLightStocksWidget(),
              CategoriesWidget(),
              RecommendedStocksWidget(),
              NewsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
