import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/highlight_table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class RiskTab extends StatelessWidget {
  const RiskTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    // holder data
    final List<String> balanceSheetColumnHeaders = ['YEAR', '2016', '2017', '2018'];
    final List<List<Map<String, dynamic>>> balanceSheetColumnData = [
      [
        { 'text': 'Profitability', 'color': Colors.blue }, 
        { 'text': '1', 'color': Colors.red }, 
        { 'text': '8', 'color': Colors.green },
        { 'text': '6', 'color': Colors.green },
      ],
    ];

    final List<String> incomeStatementColumnHeaders = ['ITEM', '2016 Audited', '2017'];

    final List<List<Map<String, dynamic>>> incomeStatementColumnData = [
      [
        { 'text': '1. Revenue' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
    ];

    return ResponsiveWidgets.builder(
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xff062D52),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BasicInfo(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'PITROSKI_SCORE',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      'Price/Book Value Ratio:',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Row(
                      children: [
                        Text(
                          'F_score (2018)',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '6', 
                            style: TextStyle(color: Colors.green)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              HighlightTable("BALANCE SHEET", balanceSheetColumnHeaders, balanceSheetColumnData),
              HighlightTable("INCOME STATEMENT", incomeStatementColumnHeaders, incomeStatementColumnData),
            ],
          ),
        )
      )
    );
  }
}