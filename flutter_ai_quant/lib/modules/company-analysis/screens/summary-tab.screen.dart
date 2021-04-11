import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-table.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/bar-gradient.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/bullet.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/fixed-one-hundred-measure-axis-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/info-table.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/line-annotation.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/multi-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/ordinal-combo-bar-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_columns_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SummaryTab extends StatefulWidget {
  final Map<String, String> sectionData = {
    "Sector": "Industrials",
    "Sub Sector": "Construction & Materials",
    "Industry": "Contruction &Materials",
  };
  final List<TwoSectionsTableModel> dataTable1 = [
    TwoSectionsTableModel("Day’s Close","76", "52W High", "106.00"),
    TwoSectionsTableModel("Day’s High","76","52W Low","24.40"),
    TwoSectionsTableModel("Day’s Low","76","AvgVol/1l","161"),
  ];
  final List<TwoSectionsTableModel> dataTable2 = [
    TwoSectionsTableModel("Val Score","76", "Stock/Sector", "Cty>Nganh"),
    TwoSectionsTableModel("G Score","62.50","Stock/Market","Stock>Market"),
    TwoSectionsTableModel("P Score","60.50","Sector/Market","Sector>Market"),
  ];
  final List<String> matrixColumnHeaders = ['Model', 'Weight', 'Price', 'Note'];

  final List<List<String>> matrixColumnData = [
    ['Forward P/E Valuation', '10%', '174,372','Relative method based on comparation average industries and market'],
    ['Forward P/BV Model', '25%', '47,900', 'Relative method based on forward P/BV'],
    ['Residual Income Valuation', '25%', '94,906', 'Net income valuation'],
    ['Intrinsic Valuation', '0%', '', 'Net assest valuation'],
    ['FCFE', '40%', '78,333', 'DFCF based on estimated growth sale, financial ratios, …in firm view'],
    ['FCFF', '0%', '', 'DFCF based on estimated growth sale, financial ratios, …in firm view'],
    ['Average price', '100%', '84,472', ''],
  ];
  final String matrixColumnDataFooterNote = "Due to different levels of uncertainty in the forecast of future cash flows (dividend, FCFE, FCFF), justified P/E and P/B based on fundamentals are assigned higher weights, followed by DDM, FCFF and FCFE model. Composite intrinsic value is estimated at 84,472 VND per share.";

  final List<String> moneyColumnHeaders = ['', 'Stock', 'Sector', 'Market'];

  final List<List<String>> moneyColumnData = [
    ['Price', '76,000', '',''],
    ['P/E Ratio', '4.81', '3.99', '28.77'],
    ['P/BV', '1.31', '2.03', '1.39'],
    ['Book value', '36,574', '21,516', '20,224'],
    ['ROE', '27.23%', '16.95%', '29.18%'],
    ['ROA', '7.07%', '6.71%', '3.44%'],
    ['ROIC', '13.07%', '8.95%', '6.93%'],
    ['D/E', '54.28%', '41.14%', '45.49%'],
  ];

  final List<TwoSectionsCardModel> forwardData = [
    TwoSectionsCardModel("", "Q4"),
    TwoSectionsCardModel("12m forward EPS", "6,828"),
    TwoSectionsCardModel("Estimated PE stock", "4.0"),
    TwoSectionsCardModel("Model price", "27,221", valueColor: Colors.blue),
    TwoSectionsCardModel("12m forward EPS", "17,437"),
    TwoSectionsCardModel("Avg PE sector", "10.0"),
    TwoSectionsCardModel("Model price", "174,372", valueColor: Colors.blue),
  ];

  final List<TwoSectionsCardModel> pbvData = [
    TwoSectionsCardModel("Book value", "36,574"),
    TwoSectionsCardModel("P/BV forward", "1.31"),
    TwoSectionsCardModel("Model price", "47,900", valueColor: Colors.blue),
    TwoSectionsCardModel("Book value", "36,574"),
    TwoSectionsCardModel("Avg P/BV sector", "2.03"),
    TwoSectionsCardModel("Model price", "74,153", valueColor: Colors.blue),
  ];
  final List<TwoSectionsCardModel> epsData = [
    TwoSectionsCardModel("EPS Forward Y1", "24,910"),
    TwoSectionsCardModel("EPS Forward Y2", "25,216"),
    TwoSectionsCardModel("EPS Forward Y3", "27,517"),
    TwoSectionsCardModel("Growth rate", "0.00%"),
    TwoSectionsCardModel("Growth years 9 years", "1%"),
    TwoSectionsCardModel("Payout during growth years", "20%"),
    TwoSectionsCardModel("Payout at maturity", "10%"),
    TwoSectionsCardModel("Growth at maturity", "1%"),
    TwoSectionsCardModel("Model price", "94,906", valueColor: Colors.blue),
  ];

  final dataMultiLineChart = {
    'Desktop': [
      new ChartData(0, 0, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(1, 10, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(2, 20, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(3, 30, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(4, 40, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(5, 50, color: charts.MaterialPalette.blue.shadeDefault),
    ],
    'Tablet': [
      new ChartData(0, 0, color: charts.MaterialPalette.red.shadeDefault),
      new ChartData(1, 15, color: charts.MaterialPalette.red.shadeDefault),
      new ChartData(2, 25, color: charts.MaterialPalette.red.shadeDefault),
      new ChartData(3, 35, color: charts.MaterialPalette.red.shadeDefault),
      new ChartData(4, 46, color: charts.MaterialPalette.red.shadeDefault),
      new ChartData(5, 57, color: charts.MaterialPalette.red.shadeDefault),
    ]
  };

  final dataOneLineChart =  {
    'Desktop': [
      new ChartData(0, 0, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(1, 10, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(2, 20, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(3, 30, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(4, 40, color: charts.MaterialPalette.blue.shadeDefault),
      new ChartData(5, 50, color: charts.MaterialPalette.blue.shadeDefault),
    ],
  };


  @override
  _SummaryTabState createState() => _SummaryTabState();
}

class _SummaryTabState extends State<SummaryTab> {
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
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsetsResponsive.all(30.sp),
            child: Column(
              children: [
                SizedBox(
                    width: 1100.sp,
                    height: 500.sp,
                    child:
                    FixedOneHundredMeasureAxisLineChart(widget.dataMultiLineChart)
                ),
                TwoColumnsCard(widget.sectionData),
                TwoSectionsTable("PRICE", "P/E", widget.dataTable1, hasMarginBottom: false,),
                TwoSectionsTable("FA_Score", "FA_Score", widget.dataTable2, leftFlex: 1, rightFlex: 1.5, isShowTopBorder: false,),
                
                SizedBox(
                    width: 1100.sp,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Container(padding: EdgeInsetsResponsive.only(left: 50.sp), child: Text("%EPS vs EPS(t-1", style: TextStyle(fontSize:  25.sp),))),
                            Expanded(child: Container(padding: EdgeInsetsResponsive.only(left: 50.sp), child: Text("EPS so với Top 20 EPS cùng ngành", style: TextStyle(fontSize:  25.sp)))),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  padding: EdgeInsetsResponsive.zero,
                                  margin: EdgeInsetsResponsive.zero,
                                  height: 150.sp,
                                  child: BulletChart(50, 25, 85, 60),
                                )

                            ),
                            Expanded(
                                child: Container(
                                  height: 150.sp,
                                  child: BulletChart(50, 25, 85, 60),
                                )

                            ),
                          ],
                        ),
                        SizedBox(height: 50.sp),
                        Row(
                          children: [
                            Expanded(child: Container(padding: EdgeInsetsResponsive.only(left: 50.sp), child: Text("EPS Cum vs EPS(4Q) newest", style: TextStyle(fontSize:  25.sp)))),
                            Expanded(child: Container(padding: EdgeInsetsResponsive.only(left: 50.sp), child: Text("Overall Score stock vs sector, market", style: TextStyle(fontSize:  25.sp)))),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  padding: EdgeInsetsResponsive.zero,
                                  margin: EdgeInsetsResponsive.zero,
                                  height: 150.sp,
                                  child: BulletChart(50, 25, 85, 60),
                                )

                            ),
                            Expanded(
                                child: Container(
                                  height: 150.sp,
                                  child: BulletChart(50, 25, 85, 60),
                                )

                            ),
                          ],
                        )
                      ],
                    )

                ),
                SizedBox(
                  width: 1100.sp,
                  height: 150.sp,
                  child: BarGradientChart(85, 60),
                ),
                SizedBox(
                  width: 1100.sp,
                  height: 500.sp,
                  child: OrdinalComboBarLineChart.withSampleData(),
                ),
                SizedBox(
                  width: 1100.sp,
                  height: 500.sp,
                  child: LineAnnotationChart.withSampleData()
                ),


                // SizedBox(
                //     width: 1100.sp,
                //     height: 500.sp,
                //     child:
                //     MultiLineChart(widget.dataOneLineChart)
                // ),
                // InfoTable("MATRIX VALUATION", widget.matrixColumnHeaders, widget.matrixColumnData, footerNote: widget.matrixColumnDataFooterNote),
                // InfoTable("DÒNG TIỀN CỦA MỘT SỐ PHƯƠNG PHÁP", widget.moneyColumnHeaders, widget.moneyColumnData),
                // TwoSectionsCard("FORWARD P/E VALUATION", widget.forwardData),
                // TwoSectionsCard("P/BV VALUATION", widget.pbvData),
                // TwoSectionsCard("EPS MODEL", widget.epsData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
