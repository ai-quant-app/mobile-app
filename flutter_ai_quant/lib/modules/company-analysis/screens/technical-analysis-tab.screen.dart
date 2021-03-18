import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-table.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/dot-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/fixed-one-hundred-measure-axis-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/multi-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/smooth-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_columns_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TechnicalAnalysisTab extends StatefulWidget {
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

  final List<TwoSectionsCardModel> forwardData = [
    TwoSectionsCardModel("P(t)", "287.41", keyColor: Colors.orange),
    TwoSectionsCardModel("P(t+1) -0.3%", "286.64", keyColor: Colors.blue, valueColor: Colors.red),
    TwoSectionsCardModel("P(t+2) 3.9%", "297.87", keyColor: Colors.blue, valueColor: Colors.blue),
    TwoSectionsCardModel("P(t+3) -1.4%", "293.65", keyColor: Colors.blue, valueColor: Colors.blue),
  ];

  final List<TwoSectionsCardModel> pivotData = [
    TwoSectionsCardModel("R3", "287.41", valueColor: Colors.red),
    TwoSectionsCardModel("P(t)", "0"),
    TwoSectionsCardModel("S3", "0.00", valueColor: Colors.blue),
    TwoSectionsCardModel("SMA(3)", "426.882", valueColor: Colors.blue),
    TwoSectionsCardModel("SMA(30)", "440.67", valueColor: Colors.blue),
    TwoSectionsCardModel("SMA(200)", "330.28", valueColor: Colors.blue),
  ];

  final List<TwoSectionsCardModel> signalData = [
    TwoSectionsCardModel("P(t)", "0", keyColor: Colors.orange),
    TwoSectionsCardModel("P(Max90)", "461.37"),
    TwoSectionsCardModel("Margin Price", "0.00%", valueColor: Colors.red),
    TwoSectionsCardModel("Signal", "= = = = - - +"),
    TwoSectionsCardModel("Return/Rish", "#VALUE!"),
    TwoSectionsCardModel("%Return*", "#VALUE!"),
  ];

  final List<TwoSectionsCardModel> trendData = [
    TwoSectionsCardModel("RAVI", "Trend Up", valueColor: Colors.blue),
    TwoSectionsCardModel("Vol", "Constant"),
    TwoSectionsCardModel("MACD", "Down", valueColor: Colors.red),
    TwoSectionsCardModel("StochRSI", "Up", valueColor: Colors.blue),
    TwoSectionsCardModel("CCI", "0"),
    TwoSectionsCardModel("ADX", "Down", valueColor: Colors.red),
  ];
  final List<TwoSectionsCardModel> taData = [
    TwoSectionsCardModel("Williams%", "-2,905.29", valueIcon: Icons.crop_square ),
    TwoSectionsCardModel("Stoch RSI", "24.23", valueIcon: Icons.crop_square),
    TwoSectionsCardModel("MFI", "0.32", valueIcon: Icons.arrow_drop_down),
    TwoSectionsCardModel("MACD", "7.92", valueIcon: Icons.arrow_drop_down),
    TwoSectionsCardModel("ADX", "46.71", valueIcon: Icons.arrow_drop_down),
    TwoSectionsCardModel("CCI", ""),
    TwoSectionsCardModel("Chaikin", "0", valueColor: Colors.red, valueIcon: Icons.crop_square),
    TwoSectionsCardModel("KST", ""),
    TwoSectionsCardModel("DMI", "46.71", valueIcon: Icons.arrow_drop_up),
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
  final dataDotChart1 = [
      new ChartData(0, 0, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(1, 10, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(2, 20, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(3, 30, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(4, 40, charts.MaterialPalette.blue.shadeDefault),
      new ChartData(5, 50, charts.MaterialPalette.blue.shadeDefault),
    ];
  final dataDotChart2 = [
      new ChartData(0, 0, charts.MaterialPalette.red.shadeDefault),
      new ChartData(1, 15, charts.MaterialPalette.red.shadeDefault),
      new ChartData(2, 25, charts.MaterialPalette.red.shadeDefault),
      new ChartData(3, 35, charts.MaterialPalette.red.shadeDefault),
      new ChartData(4, 46, charts.MaterialPalette.red.shadeDefault),
      new ChartData(5, 57, charts.MaterialPalette.red.shadeDefault),
    ];

  @override
  _PricingTabState createState() => _PricingTabState();
}

class _PricingTabState extends State<TechnicalAnalysisTab> {
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
            padding: EdgeInsetsResponsive.all(30.sp),
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
                SizedBox(
                    width: 1100.sp,
                    height: 500.sp,
                    child:
                    DotLineChart("Destop", "Table", widget.dataDotChart1, widget.dataDotChart2)
                ),
                SizedBox(
                    width: 1100.sp,
                    height: 500.sp,
                    child:
                    MultiLineChart(widget.dataMultiLineChart)
                ),
                TwoSectionsCard("FORECAST", widget.forwardData),
                TwoSectionsCard("PIVOT", widget.pivotData),
                TwoSectionsCard("SIGNAL", widget.signalData),
                TwoSectionsCard("TREND", widget.trendData),
                TwoSectionsCard("TA INDICATOR", widget.taData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
