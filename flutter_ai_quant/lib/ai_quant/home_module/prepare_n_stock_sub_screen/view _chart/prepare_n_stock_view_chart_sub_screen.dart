import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class PrepareNStockViewChartSubScreen extends StatefulWidget {
  @override
  _PrepareNStockViewChartSubScreenState createState() =>
      _PrepareNStockViewChartSubScreenState();
}

class _PrepareNStockViewChartSubScreenState
    extends State<PrepareNStockViewChartSubScreen> {
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
        backgroundColor: Color(0xFF062D52),
        body: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
