import 'package:flutter/material.dart';

import 'package:flutter_ai_quant/ai_quant/category_module/category/screen/category_screen.dart';
import 'package:flutter_ai_quant/ai_quant/chart_module/chart/screen/chart_screen.dart';
import 'package:flutter_ai_quant/ai_quant/home_module/home/screen/home_screen.dart';
import 'package:flutter_ai_quant/ai_quant/price_list_module/price_list/screen/price_list_screen.dart';
import 'package:flutter_ai_quant/ai_quant/set_command_module/set_command/screen/set_command_screen.dart';

import 'package:flutter_ai_quant/common/widgets/navigation_bar/bottom_navigation_bar_widget.dart';

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
          iconSize: 75.sp,
          changeIndex: changeIndex,
        ),
      ),
    );
  }
}
