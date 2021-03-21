import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-table.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/fixed-one-hundred-measure-axis-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/horizontal-bar-label.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/horizontal-charts-card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/info-table.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/multi-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/smooth-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_columns_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RankingTab extends StatefulWidget {
  final Map<String, ChartData> totalScoreData = {
    "sale1": ChartData(1, 59.9, charts.Color.fromHex(code: "#FFFE99")),
    "sale2": ChartData(2, 5.5, charts.Color.fromHex(code: "#FECC99")),
    "sale3": ChartData(3, 35.7, charts.Color.fromHex(code: "#FD8080")),
  };

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
      new ChartData(0, 0, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(1, 10, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(2, 20, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(3, 30, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(4, 40, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(5, 50, charts.MaterialPalette.blue.shadeDefault),
    ],
    'Tablet': [
      new ChartData(0, 0, charts.MaterialPalette.red.shadeDefault),
      new ChartData(1, 15, charts.MaterialPalette.red.shadeDefault),
      new ChartData(2, 25, charts.MaterialPalette.red.shadeDefault),
      new ChartData(3, 35, charts.MaterialPalette.red.shadeDefault),
      new ChartData(4, 46, charts.MaterialPalette.red.shadeDefault),
      new ChartData(5, 57, charts.MaterialPalette.red.shadeDefault),
    ]
  };

  final dataOneLineChart =  {
    'Desktop': [
      new ChartData(0, 0, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(1, 10, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(2, 20, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(3, 30, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(4, 40, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(5, 50, charts.MaterialPalette.blue.shadeDefault),
    ],
  };

  @override
  _RankingTabState createState() => _RankingTabState();
}

class _RankingTabState extends State<RankingTab> {
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
                TwoSectionsTable("PRICE", "P/E", widget.dataTable1),
                Align(
                  child: Text("SMART FINANCIAL RANK", style: TextStyle(color: Colors.blue),),
                  alignment: Alignment.topLeft,
                ),
                Text("These Thần Kinh scores compare various aspects of LCG with its industry and relevant benchmarks. The scores are percentile rankings form 0 to 99.9. Higher scores are better."),
                HorizontalChartCard(
                    "Total Score (TotalS)",
                    "The Than Kinh AI Total Score reflects a company’s rank 59.85. The higher the score, the better the combined performance of these key measures. With a Than Kinh AI Total Score 59.85, is well above the average of its industry group,which has a Than Kinh AI Total Score of 14.73.",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Valuation Score (ValueS)",
                    "The Than Kinh AI Valuation Score measures the relationship between a company’s stock price and its intrinsic value, as indicated by earnings and balance sheet attributes, with an emphasis on earnings. Also it consideres the measure of cash flow and fundamental ratios. With a Than Kinh AI Valuation Score of 63.50, is substantially higher than the average of its industry group, which has a Than Kinh AI Valuation Score of 8.00",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Growth Score (GrowthS)",
                    "The Than Kinh AI Valuation Score measures the relationship between a company’s stock price and its intrinsic value, as indicated by earnings and balance sheet attributes, with an emphasis on earnings. Also it consideres the measure of cash flow and fundamental ratios. With a Than Kinh AI Valuation Score of 63.50, is substantially higher than the average of its industry group, which has a Than Kinh AI Valuation Score of 8.00",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Growth Score (GrowthS)",
                    "The Than Kinh AI Growth Score reflects a company’s historical and projected earnings 76.00 growth, revenue and sales growth, projected cash flow, analyst activity, and changes in earnings estimates over various time periods. The higher the score, the better the combined performance of these key measures. With a Than Kinh AI Growth Score of 76.00, is well above the average of its industry group, which has a Than Kinh AI Growth Score of 5.50.",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Profitability Score (ProfitS)",
                    "The Than Kinh AI Profitability Score measures a company’s profitabilities and price momentum, evenly weighted, and augmented by group strength, cash flow, and relative volume. Core technical factors include current price relative to periodic highs and moving averages. With a Than Kinh AI Profitability Score of 60.50, is marginally higher than the average of its industry group, which carries a Than Kinh AI Profitability Score of 31.25.",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Financial Strength (FinS)",
                    "The Than Kinh AI Financial Strength Score assesses a company’s overall finance performance and projected outlook. Time periods include an average look-back of three years with an emphasis on the past four quarters and a forward look of one to five years. With a Than Kinh AI Financial Strength Score of 28.33, is considerably lower than the average of its industry group, which has a Than Kinh AI Financial Strength Score of 28.33.",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Asset Utilization Score (AssetS)",
                    "The Than Kinh AI Balance Sheet Score measures a company’s liquidity and debt issues, as well as receivables and inventory quality. This score is used to assess relative risk associated with a stock: the lower the score, most likely the higher the inherent risk. With a Than Kinh AI Balance Sheet Score of 32.00, is moderately higher than the average of its industry group, which carries a Than Kinh AI Balance Sheet Score of 28.00.",
                    widget.totalScoreData
                ),
                HorizontalChartCard(
                    "Management Score (ManageS)",
                    "The Than Kinh AI Fundamental Score is the broad measure of a company’s financial health, including its balance sheet, cash flow, revenue, and earnings quality. With a Than Kinh AI Fundamental Score of 46.67, is moderately higher than the average of its industry group, which carries a Than Kinh AI Fundamental Score of 21.67.",
                    widget.totalScoreData
                ),
                // Container(
                //   width: 1100.sp,
                //   child: Column(
                //     children: [
                //       Align(
                //         child: Text("Total Score (TotalS)", style: TextStyle(color: Colors.green),),
                //         alignment: Alignment.topLeft,
                //       ),
                //       Row(
                //         children: [
                //           Expanded(
                //             flex: 4,
                //             child: Container(
                //               height: 500.sp,
                //               child: HorizontalBarLabelChart(widget.totalScoreData),
                //             )
                //           ),
                //           Expanded(child: Text("123"), flex: 6,),
                //         ],
                //       )
                //     ],
                //   ),
                // )


                // SizedBox(
                //     width: 1100.sp,
                //     height: 500.sp,
                //     child:
                //     MultiLineChart(widget.dataOneLineChart)
                // ),
                // InfoTable("MATRIX VALUATION", widget.matrixColumnHeaders, widget.matrixColumnData, widget.matrixColumnDataFooterNote),
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
