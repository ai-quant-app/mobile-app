import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/smooth-line.chart.dart';
import 'package:flutter_speedometer/flutter_speedometer.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CompaniesScreen extends StatefulWidget {
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xff062D52),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170.sp),
          child: AppBar(
            backgroundColor: Color(0xff074884),
            title: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Text(
                            "LCG",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 70.sp),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "10.1",
                            style: new TextStyle(
                                color: Color(0xff50FD2F), fontSize: 70.sp),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "0 (0%)",
                            style: new TextStyle(
                                color: Color(0xff50FD2F), fontSize: 50.sp),
                          ),
                          Container(
                            height: 40.sp,
                            child: VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                              width: 100.sp,
                            ),
                          ),
                          Text(
                            "HOSE",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 50.sp),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Licogi 16",
                        style: new TextStyle(
                            color: Colors.white.withOpacity(0.58),
                            fontSize: 40.sp),
                      ),
                      // OutlineButton(
                      //   onPressed: null,
                      //   child: Text(
                      //     'Đặt lệnh',
                      //     style: new TextStyle(color: Colors.white),
                      //   ),
                      //   highlightedBorderColor: Colors.red,
                      // )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.sp),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 190.sp,
                      child: Column(
                        children: [
                          Text('AI Score',
                              style: TextStyle(
                                  fontSize: 45.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 5.sp),
                          Text('A+',
                              style: TextStyle(
                                  fontSize: 70.sp,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(height: 5.sp),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Score',
                                  style: TextStyle(fontSize: 25.sp)),
                              Text('0.0', style: TextStyle(fontSize: 25.sp))
                            ],
                          ),
                          SizedBox(height: 5.sp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('P/E', style: TextStyle(fontSize: 25.sp)),
                              Text('0.0', style: TextStyle(fontSize: 25.sp))
                            ],
                          ),
                          SizedBox(height: 5.sp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('EPS(4Q*)',
                                  style: TextStyle(fontSize: 25.sp)),
                              Text('0.0', style: TextStyle(fontSize: 25.sp))
                            ],
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Speedometer(
                          size: 250.sp,
                          minValue: 0,
                          maxValue: 100,
                          currentValue: 82,
                          warningValue: 45,
                          backgroundColor: Color(0xff062D52),
                          meterColor: Colors.orange,
                          warningColor: Colors.green,
                          kimColor: Colors.white,
                          displayNumericStyle: TextStyle(
                              fontFamily: 'Digital-Display',
                              color: Colors.white,
                              fontSize: 50.sp),
                          displayText: '%',
                          displayTextStyle: TextStyle(color: Colors.white, fontSize: 30.sp),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('AI QUANT',
                              style: TextStyle(
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10.sp),
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(30.sp, 10.sp, 30.sp, 10.sp),
                            decoration: BoxDecoration(
                                color: Color(0xffEDFFF1),
                                borderRadius: new BorderRadius.all(
                                    Radius.elliptical(50.sp, 50.sp))),
                            child: Text('BUY',
                                style: TextStyle(
                                  fontSize: 60.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff12C952),
                                )),
                          ),
                          SizedBox(height: 10.sp),
                          Text('14:25:03',
                              style: TextStyle(
                                fontSize: 35.sp,
                              )),
                          SizedBox(height: 20.sp),
                          Text('Xem chi tiết',
                              style: TextStyle(
                                fontSize: 40.sp,
                                color: Color(0xff26B1FB)
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 100.sp,),
                SmoothLineChart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
