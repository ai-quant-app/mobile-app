import 'package:flutter/material.dart';

import 'package:flutter_ai_quant/commons/common_widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter_ai_quant/modules/category/screens/category_screen.dart';
import 'package:flutter_ai_quant/modules/chart/screens/chart_screen.dart';
import 'package:flutter_ai_quant/modules/home/screens/home_screen.dart';
import 'package:flutter_ai_quant/modules/price_list/screens/price_list.dart';
import 'package:flutter_ai_quant/modules/set_command/screens/set_command_screen.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    setState(() => selectedIndex = index);
  }

  List<dynamic> renderScreen = [
    CategoryScreen(),
    PriceListScreen(),
    HomeScreen(),
    ChartScreen(),
    SetCommandScreen(),
  ];

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
        body: IndexedStack(
          index: selectedIndex,
          children: [
            renderScreen[0],
            renderScreen[1],
            renderScreen[2],
            renderScreen[3],
            renderScreen[4],
          ],
        ),
        bottomNavigationBar: BottomNavigationBarWidget(
          selectedIndex: selectedIndex,
          changeIndex: changeIndex,
        ),
      ),
    );
  }
}
