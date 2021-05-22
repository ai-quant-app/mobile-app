import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/home/line_chart_widget.dart';

class HighLightStocksWidget extends StatelessWidget {
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
      allowFontScaling: true,
      child: Container(
        height: 350.sp,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
                          margin: EdgeInsetsResponsive.fromLTRB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Text("S&P 500 Fut",
                              style: TextStyle(
                                color: Color(0xff539BDC),
                                fontFamily: 'Helvetica Neue',
                                fontSize: 35.sp,
                                letterSpacing: 0,
                              )),
                        ),
                        Container(
                          margin: EdgeInsetsResponsive.fromLTRB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            "3,367.75",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontFamily: 'Helvetica Neue',
                              fontSize: 25.sp,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "-15.35 (-0.45%)",
                            style: TextStyle(
                              color: Color(0xffED6060),
                              fontFamily: 'Helvetica Neue',
                              fontSize: 30.sp,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBoxResponsive(width: 10),
                    ContainerResponsive(
                      width: MediaQuery.of(context).size.height / 3,
                      height: 180,
                      child: SimpleLineChart(
                          SimpleLineChart.withSampleData().seriesList),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsetsResponsive.fromLTRB(30, 50, 20, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsetsResponsive.fromLTRB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            "VIX",
                            style: TextStyle(
                              color: Color(0xff539BDC),
                              fontFamily: 'Helvetica Neue',
                              fontSize: 35.sp,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsetsResponsive.fromLTRB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            "33.35",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontFamily: 'Helvetica Neue',
                              fontSize: 25.sp,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsetsResponsive.fromLTRB(0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            "+ 0.89 (+2.74%)",
                            style: TextStyle(
                              color: Color(0xFF25E654),
                              fontFamily: 'Helvetica Neue',
                              fontSize: 30.sp,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ContainerResponsive(
                      width: MediaQuery.of(context).size.height / 3,
                      height: 180,
                      child: SimpleLineChart(
                        SimpleLineChart.withSampleData().seriesList,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
