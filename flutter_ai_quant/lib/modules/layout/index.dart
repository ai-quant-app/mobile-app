import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import '../components/chart.dart';

class HomePage extends StatelessWidget {

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
            backgroundColor: Theme.of(context).primaryColor,
            body: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsetsResponsive.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 5.0),
                                      child: Text("S&P 500 Fut",
                                          style: TextStyle(
                                            color: Color(0xff539BDC),
                                            fontFamily: 'Helvetica Neue',
                                            fontSize: 18.sp,
                                            letterSpacing: 0,
                                          )),
                                    ),
                                    Container(
                                      padding: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 5.0),
                                      child: Text("3,367.75",
                                          style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontFamily: 'Helvetica Neue',
                                            fontSize: 13.sp,
                                            letterSpacing: 0,
                                          )),
                                    ),
                                    Container(
                                      padding: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 5.0),
                                      child: Text("-15.35 (-0.45%)",
                                          style: TextStyle(
                                            color: Color(0xffED6060),
                                            fontFamily: 'Helvetica Neue',
                                            fontSize: 16.sp,
                                            letterSpacing: 0,
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBoxResponsive(width: 50),
                                Container(
                                  height: 150.sp, child: LineChartSample2()
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text("Hello", style: TextStyle(color: Colors.black))
                    ],
                  ),
                ),
                Text("Row for danh mục", style: TextStyle(color: Colors.white)),
                Text("Row for mã khuyến nghị",
                    style: TextStyle(color: Colors.white)),
                Text("Row for tin tức", style: TextStyle(color: Colors.white)),
                Text("Row for bài báo", style: TextStyle(color: Colors.white)),
              ],
            )));
  }
}
