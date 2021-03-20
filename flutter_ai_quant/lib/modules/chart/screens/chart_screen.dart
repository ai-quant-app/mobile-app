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
        backgroundColor: Color(0xFF062D52),
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
                    color: Colors.lightBlue,
                    width: 3.sp,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.sp))),
                ),
                onPressed: () {},
              ),
            ),
          ],
          bottom: PreferredSize(
            child: Container(
              color: Colors.lightBlue,
              height: 5.sp,
            ),
            preferredSize: Size.fromHeight(5.sp),
          ),
        ),
        body: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
