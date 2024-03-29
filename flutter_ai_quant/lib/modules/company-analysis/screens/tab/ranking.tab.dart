import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/horizontal-charts-card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/horizontal-one-hundred-bar-label.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/info-table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RankingTab extends StatefulWidget {
  final Map<String, ChartData> totalScoreData = {
    "sale1": ChartData(1, 59.9, color: charts.Color.fromHex(code: "#FFFE99")),
    "sale2": ChartData(2, 5.5, color: charts.Color.fromHex(code: "#FECC99")),
    "sale3": ChartData(3, 35.7, color: charts.Color.fromHex(code: "#FD8080")),
  };

  final Map<String, String> sectionData = {
    "Sector": "Industrials",
    "Sub Sector": "Construction & Materials",
    "Industry": "Contruction &Materials",
  };

  final List<String> goalColumnHeaders = ['ID', 'Stock', 'Price', 'TotalS', 'ValueS', 'GrowthS', 'ProfitS', 'FinS', 'AssetS', 'ManageS', 'MarketCap*'];

  final List<List<String>> goalColumnData = [
    ['ID', 'Stock', 'Price', 'TotalS', 'ValueS', 'GrowthS', 'ProfitS', 'FinS', 'AssetS', 'ManageS', 'MarketCap*'],
    ['ID', 'Stock', 'Price', 'TotalS', 'ValueS', 'GrowthS', 'ProfitS', 'FinS', 'AssetS', 'ManageS', 'MarketCap*'],
    ['ID', 'Stock', 'Price', 'TotalS', 'ValueS', 'GrowthS', 'ProfitS', 'FinS', 'AssetS', 'ManageS', 'MarketCap*'],
    ['ID', 'Stock', 'Price', 'TotalS', 'ValueS', 'GrowthS', 'ProfitS', 'FinS', 'AssetS', 'ManageS', 'MarketCap*'],
    ['ID', 'Stock', 'Price', 'TotalS', 'ValueS', 'GrowthS', 'ProfitS', 'FinS', 'AssetS', 'ManageS', 'MarketCap*'],
  ];


  final peerTick = <charts.TickSpec<num>>[
    charts.TickSpec(0, label: ""),
    charts.TickSpec(20, label: "Very"),
    charts.TickSpec(40,label: "Lowe"),
    charts.TickSpec(60, label: "Average"),
    charts.TickSpec(80, label: "High"),
    charts.TickSpec(100, label: "Very"),
  ];

  final Map<String, ChartData> peerData = {
    "LCG": ChartData("LCG", 61.13, color: charts.Color.fromHex(code: "#FD7F7D")),
    "DIG": ChartData("DIG", 28.65, color: charts.Color.fromHex(code: "#FECD95")),
    "D2D": ChartData("D2D", 29.13, color: charts.Color.fromHex(code: "#FFFE93")),
    "CII": ChartData("CII", 54.60, color: charts.Color.fromHex(code: "#CAFFFF")),
    "CNT": ChartData("CNT", 51.37, color: charts.Color.fromHex(code: "#60D6BB")),
    "SC5": ChartData("SC5", 30.77, color: charts.Color.fromHex(code: "#FD7F7D")),
    "BT6": ChartData("BT6", 38.70, color: charts.Color.fromHex(code: "#0E62CF")),
    "VNE": ChartData("VNE", 15.87, color: charts.Color.fromHex(code: "#CCCBFE")),
    "L10": ChartData("L10", 48.27, color: charts.Color.fromHex(code: "#676FC9")),
    "DCC": ChartData("DCC", 31.73, color: charts.Color.fromHex(code: "#F89AC6")),
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
                BasicInfo(),
                Align(
                  child: Text("SMART FINANCIAL RANK", style: TextStyle(color: Colors.blue),),
                  alignment: Alignment.topLeft,
                ),
                Text(
                  "These Thần Kinh scores compare various aspects of LCG with its industry and relevant benchmarks. The scores are percentile rankings form 0 to 99.9. Higher scores are better.",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor
                  ),
                ),
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
                InfoTable("SORT ĐA MỤC TIÊU Ở NHIỀU CHỨC NĂNG", widget.goalColumnHeaders, widget.goalColumnData,
                    footerNote:'* This table compares LCG with other companies in the same industry group.\n** Phân loại MarketCap theo chỉ tiêu như đã nói',
                    footerColor: Color(0xFFFFFFFF).withOpacity(.58)
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsetsResponsive.only(top: 50.sp),
                        child: Align(
                          child: Text("PEER GROUNP", style: TextStyle(color: Colors.blue),),
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      Container(
                        height: 500.sp,
                        child: HorizontalOneHundredBarLabelChart(widget.peerData, widget.peerTick),
                      ),
                      Container(
                        padding: EdgeInsetsResponsive.only(top: 50.sp),
                        child: Align(
                          child: Text("COMPARE STOCK, INDUSTRY AND MARKET", style: TextStyle(color: Colors.blue),),
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ],
                  ),
                ),
                InfoTable("", widget.goalColumnHeaders, widget.goalColumnData,
                    hasTopBorder: false, hasBottomBorder: false,
                ),
                InfoTable("", widget.goalColumnHeaders, widget.goalColumnData,
                  hasTopBorder: false, hasBottomBorder: false,
                ),
                InfoTable("", widget.goalColumnHeaders, widget.goalColumnData,
                  hasTopBorder: false, hasBottomBorder: false,
                ),
                InfoTable("", widget.goalColumnHeaders, widget.goalColumnData,
                  hasTopBorder: false, hasBottomBorder: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
