import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/bar-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/info-table.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_card.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class IndexTab extends StatelessWidget {
  const IndexTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    // holder data
    final List<String> marketValueColumnHeaders = ['', '2016', '2017', '2018', ''];
    final List<List<String>> marketValueColumnData = [
      ['Current common shareholder', '2,500,000', '5,650,000', '13,600,000', 'increase'],
      ['Common shareholder outstanding', '', '', '', 'none'],
      ['Earnings per share', '1,182', '12,115', '9,958', 'decrease'],
      ['Earnings per share Adj', '1,182', '12,115', '9,958', 'decrease'],
      ['P/E', '1,182', '12,115', '9,958', 'decrease'],
      ['P/E Adj', '1,182', '12,115', '9,958', 'decrease'],
      ['PEG', '1,182', '12,115', '9,958', 'decrease'],
      ['PEG*', '1,182', '12,115', '9,958', 'decrease'],
      ['P/BV', '1,182', '12,115', '9,958', 'decrease'],
      ['P/S', '1,182', '12,115', '9,958', 'decrease'],
      ['P/CF', '1,182', '12,115', '9,958', 'decrease'],
      ['Earnings per share', '1,182', '12,115', '9,958', 'decrease'],
    ];

    // growth data
    final List<TwoSectionsCardModel> growthRatiosData = [
        TwoSectionsCardModel('%Sale', 'Ration'),
        TwoSectionsCardModel('%Earnings per share (EPS)', '11.7%'),
        TwoSectionsCardModel('Foreign Ownership', '27.6%'),
        TwoSectionsCardModel('Other', '60.8%'),
    ];

    return ResponsiveWidgets.builder(
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xff062D52),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BasicInfo(),
              InfoTable("MARKET VALUE RATIOS", marketValueColumnHeaders, marketValueColumnData),
              Row(
                children: [
                  BarLineChart(),
                  BarLineChart(),
                ],
              ),
              Row(
                children: [
                  BarLineChart(),
                  BarLineChart(),
                ],
              ),
              TwoSectionsCard("GROWTH RATIOS", growthRatiosData),
            ],
          ),
        )
      )
    );
  }
}