import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-table.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/fixed-one-hundred-measure-axis-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_columns_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_table.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:responsive_widgets/responsive_widgets.dart';


class BasicInfo extends StatefulWidget {
  final Map<String, String> sectionData = {
    "Sector": "Industrials",
    "Sub Sector": "Construction & Materials",
    "Industry": "Construction & Materials",
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

  @override
  _BasicInfoState createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
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
      child: Column(
        children: [
          SizedBox(
              width: 1100.sp,
              height: 500.sp,
              child: FixedOneHundredMeasureAxisLineChart(widget.dataMultiLineChart)
          ),
          TwoColumnsCard(widget.sectionData),
          TwoSectionsTable("PRICE", "P/E", widget.dataTable1, hasMarginBottom: false),
        ],
      ),
    );
  }
}