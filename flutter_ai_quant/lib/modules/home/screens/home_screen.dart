import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

import '../components/high_light_stocks.dart';
import 'package:flutter_ai_quant/modules/home/components/drawer.dart';
import 'package:flutter_ai_quant/modules/home/components/categories.dart';
import 'package:flutter_ai_quant/modules/home/components/recommended_stocks.dart';

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
      allowFontScaling: true,
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
        drawer: DrawerComponent(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HighLightStocks(),
              Categories(),
              RecommendedStocks(),
              Text("Row for tin tức", style: TextStyle(color: Colors.white)),
              Text("Row for bài báo", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
