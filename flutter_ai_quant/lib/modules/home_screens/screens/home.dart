import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import '../components/high_light_stocks.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
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
            body: Column(
              children: <Widget>[
                HighLightStocks(),
                Text("Row for danh mục", style: TextStyle(color: Colors.white)),
                Text("Row for mã khuyến nghị",
                    style: TextStyle(color: Colors.white)),
                Text("Row for tin tức", style: TextStyle(color: Colors.white)),
                Text("Row for bài báo", style: TextStyle(color: Colors.white)),
              ],
            )));
  }
}
