import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
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
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.bar_chart,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: [
            Container(
              padding: EdgeInsetsResponsive.all(25),
              child: OutlinedButton(
                child: Text(
                  "GIAO DỊCH",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Color(0xFF074784),
                    width: 8.sp,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.sp))),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
