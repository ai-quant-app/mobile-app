import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class AlgorithmTradingScreen extends StatefulWidget {
  @override
  _AlgorithmTradingScreenState createState() => _AlgorithmTradingScreenState();
}

class _AlgorithmTradingScreenState extends State<AlgorithmTradingScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
        height: 1920, width: 1080, allowFontScaling: false);

    return ResponsiveWidgets.builder(
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          backgroundColor: Color(0xFF062D52),
          title: Text(
            "Lệnh Giao Dịch Theo Thuật Toán",
            style: TextStyle(fontSize: 65.sp),
          ),
        ),
      ),
    );
  }
}
