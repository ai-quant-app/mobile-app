import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class PrepareNStockScreen extends StatefulWidget {
  @override
  _PrepareNStockScreenState createState() => _PrepareNStockScreenState();
}

class _PrepareNStockScreenState extends State<PrepareNStockScreen> {
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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF074784),
          title: Text(
            "So sánh cổ phiếu",
            style: TextStyle(fontSize: 65.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
