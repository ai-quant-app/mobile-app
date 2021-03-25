import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class SellScreen extends StatefulWidget {
  @override
  _SellScreenState createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
        height: 1920, width: 1080, allowFontScaling: false);

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          backgroundColor: Color(0xFF062D52),
          title: Text(
            "Giao Dịch",
            style: TextStyle(fontSize: 65.sp),
          ),
        ),
      ),
    );
  }
}
