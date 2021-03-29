import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class PriceListScreen extends StatefulWidget {
  @override
  _PriceListScreenState createState() => _PriceListScreenState();
}

class _PriceListScreenState extends State<PriceListScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: true,
    );

    return ResponsiveWidgets.builder(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF062D52),
          title: Text("Price List Screen"),
        ),
      ),
    );
  }
}