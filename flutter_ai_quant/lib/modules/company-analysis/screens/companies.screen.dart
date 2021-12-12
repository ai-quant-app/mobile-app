import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/gages-chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/index.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/news.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/overview.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/shareholder.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/summary.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/pricing.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/ranking.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/screens/tab/technical-analysis.tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/custom-tab.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/gauge.chart.dart';
import 'package:charts_common/common.dart' as charts;
import 'package:responsive_widgets/responsive_widgets.dart';

class CompaniesScreen extends StatefulWidget {
  final gauge = [
    GaugeChartData('0-45', 45, charts.Color.fromHex(code:"#E8313A")),
    GaugeChartData('45-70', 25, charts.Color.fromHex(code:"#FFED64")),
    GaugeChartData('70-100', 30, charts.Color.fromHex(code:"#92BE28")),
  ];
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}


class _CompaniesScreenState extends State<CompaniesScreen> {
  int _index = 0;
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        body: Container(
            padding: EdgeInsets.all(30.sp),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        height: 250.sp,
                        child: OverflowBox(
                            alignment: Alignment.topLeft,
                            maxHeight: 500.sp,
                            child:
                              SizedBox(
                                  height: 500.sp,
                                  child:GaugeChart(widget.gauge, 250.sp, 80)
                              ),

                        ),
                      )
                    ),
                    // Expanded(
                    //   child: Container(
                    //     child: Speedometer(
                    //       size: 250.sp,
                    //       minValue: 0,
                    //       maxValue: 100,
                    //       currentValue: 82,
                    //       warningValue: 45,
                    //       backgroundColor: Color(0xff062D52),
                    //       meterColor: Colors.orange,
                    //       warningColor: Colors.green,
                    //       kimColor: Colors.white,
                    //       displayNumericStyle: TextStyle(
                    //           fontFamily: 'Digital-Display',
                    //           color: Colors.white,
                    //           fontSize: 50.sp),
                    //       displayText: '%',
                    //       displayTextStyle: TextStyle(color: Colors.white, fontSize: 30.sp),
                    //     ),
                    //   ),
                    // ),
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
                Expanded(
                  child: DefaultTabController(
                    // The number of tabs / content sections to display.
                      length: 8,
                      initialIndex: _index,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TabBar(
                              onTap: (index){
                                setState(() {
                                  _index = index;
                                });
                              },
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorWeight: 0,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25.0,
                                ),
                                color: Colors.blue,

                              ),
                              isScrollable: true,
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                CustomTab("Tổng hợp", 0 == this._index),
                                CustomTab("Xếp hạng", 1 == this._index),
                                CustomTab("P/t kỹ thuật", 2 == this._index),
                                CustomTab("Định giá", 3 == this._index),
                                CustomTab("Chỉ số", 4 == this._index),
                                CustomTab("Tin tức", 5 == this._index),
                                CustomTab("Tổng quan", 6 == this._index),
                                CustomTab("Cổ đông", 7 == this._index),
                              ],
                            ),
                            Expanded(child:
                              Container(
                                child: TabBarView(
                                  children: [
                                    SummaryTab(),
                                    RankingTab(),
                                    TechnicalAnalysisTab(),
                                    PricingTab(),
                                    IndexTab(),
                                    NewsTab(),
                                    OverviewTab(),
                                    ShareholderTab()
                                  ],
                                ),
                              )
                            )
                          ],
                        )
                  ),
                )
                // LineChartSample7(),
              ],
            ),
          ),
        ),
    );
  }
}
