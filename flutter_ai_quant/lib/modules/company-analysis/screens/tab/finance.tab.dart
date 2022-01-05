import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/highlight_table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class FinanceTab extends StatelessWidget {
  const FinanceTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    // holder data
    final List<String> balanceSheetColumnHeaders = ['', '2016', '2017'];
    final List<List<Map<String, dynamic>>> balanceSheetColumnData = [
      [
        { 'text': 'A. SHORT-TERM ASSETS', 'color': Colors.blue }, 
        { 'text': '249,567', 'color': Colors.blue }, 
        { 'text': '787,824', 'color': Colors.blue },
      ],
      [
        { 'text': 'I. Cash and Equivalent Cash' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'II. Short-term investment' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'III. Short-term Accounts receivable' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'IV. Inventories' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'V. Other current state' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'B. FIXED ASSETS AND LT INVESTMENTS', 'color': Colors.blue }, 
        { 'text': '56,480', 'color': Colors.blue }, 
        { 'text': '334,690', 'color': Colors.blue },
      ],
      [
        { 'text': 'I. Long-term receivables' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'II. Fixed Assets' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'III. Investment in Real estate' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'IV. Long-term financial investments' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'V. Good wills' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'V. Good wills' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'VI. Other long-term assets' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'TOTAL ASSETS', 'color': Colors.blue }, 
        { 'text': '306,047', 'color': Colors.blue }, 
        { 'text': '1,122,514', 'color': Colors.blue },
      ],
      [
        { 'text': 'A. LIABILITIES', 'color': Colors.blue }, 
        { 'text': '56,480', 'color': Colors.blue }, 
        { 'text': '334,690', 'color': Colors.blue },
      ],
      [
        { 'text': 'I. Current liabilities' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'II. Long-term liabilities' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'B. OWNERS EQUITY', 'color': Colors.blue }, 
        { 'text': '56,480', 'color': Colors.blue }, 
        { 'text': '334,690', 'color': Colors.blue },
      ],
      [
        { 'text': 'I. Capital sources and funds' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'II. Budget source and other funds' }, 
        { 'text': '6,914' }, 
        { 'text': '17,292' },
      ],
      [
        { 'text': 'C. MINORITY INTEREST', 'color': Colors.blue }, 
        { 'text': '-', 'color': Colors.blue }, 
        { 'text': '-', 'color': Colors.blue },
      ],
      [
        { 'text': 'TOTAL ASSETS', 'color': Colors.blue }, 
        { 'text': '306,047', 'color': Colors.blue }, 
        { 'text': '1,122,514', 'color': Colors.blue },
      ],
    ];

    final List<String> incomeStatementColumnHeaders = ['ITEM', '2016 Audited', '2017'];

    final List<List<Map<String, dynamic>>> incomeStatementColumnData = [
      [
        { 'text': '1. Revenue' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '2. Less deductions' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '3. Not revenue', 'color': Colors.blue }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '4. Cost of goods sold' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '5. Gross profit', 'color': Colors.blue }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '6. Financial income' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '7. Financial expenses' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': 'in which: loan interest expenses' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '8. Selling expenses' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '9. General & Administration expenses' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '10. Not operating profit', 'color': Colors.blue }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '11. Other income' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '12. Other expenses', 'color': Colors.blue }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '13. Other profit' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '14. Lợi nhuận/lỗ trong cty liên kết, liên doanh' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '15. Gross accounting income before tax', 'color': Colors.blue }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '16.1. Current Corporate income tax' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '16.2. Corporate income tax - Deferred' }, 
        { 'text': '249,567' }, 
        { 'text': '787,824' },
      ],
      [
        { 'text': '17. Net profit after tax' }, 
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
            children: [
              BasicInfo(),
              HighlightTable("BALANCE SHEET", balanceSheetColumnHeaders, balanceSheetColumnData),
              HighlightTable("INCOME STATEMENT", incomeStatementColumnHeaders, incomeStatementColumnData),
            ],
          ),
        )
      )
    );
  }
}