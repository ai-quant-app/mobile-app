import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import './line_chart.dart';

class HighLightStocks extends StatelessWidget {

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
        child: Container(
          height: 320.sp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsetsResponsive.fromLTRB(30, 50, 20, 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 15.0),
                              child: Text("S&P 500 Fut",
                                  style: TextStyle(
                                    color: Color(0xff539BDC),
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 45.sp,
                                    letterSpacing: 0,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 15.0),
                              child: Text("3,367.75",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 35.sp,
                                    letterSpacing: 0,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 5.0),
                              child: Text("-15.35 (-0.45%)",
                                  style: TextStyle(
                                    color: Color(0xffED6060),
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 40.sp,
                                    letterSpacing: 0,
                                  )),
                            ),
                          ],
                        ),
                        SizedBoxResponsive(width: 50),
                        SimpleLineChart([],true),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsetsResponsive.fromLTRB(30, 50, 20, 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 15.0),
                              child: Text("VIX",
                                  style: TextStyle(
                                    color: Color(0xff539BDC),
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 45.sp,
                                    letterSpacing: 0,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 15.0),
                              child: Text("33.35",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 35.sp,
                                    letterSpacing: 0,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 5.0),
                              child: Text("+ 0.89 (+2.74%)",
                                  style: TextStyle(
                                    color: Color(0xFF25E654),
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 40.sp,
                                    letterSpacing: 0,
                                  )),
                            ),
                          ],
                        ),
                        SizedBoxResponsive(width: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
