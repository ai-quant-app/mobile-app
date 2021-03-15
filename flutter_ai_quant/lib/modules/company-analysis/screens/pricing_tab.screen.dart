import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-table.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/smooth-line.chart.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_columns_card.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_table.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class PricingTab extends StatefulWidget {
  @override
  _PricingTabState createState() => _PricingTabState();
}

class _PricingTabState extends State<PricingTab> {
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
                LineChartSample7(),
                TwoColumnsCard(sectionData),
                TwoSectionsTable("PRICE", "P/E", dataTable1),
                LineChartSample7(),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 10.sp, color: Colors.grey),
                      bottom: BorderSide(width: 10.sp, color: Colors.grey)
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
                        alignment: Alignment.centerLeft,
                        child: Text("MATRIX VALUATION", style: TextStyle(color: Colors.blue))
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          dataRowHeight: 90.sp,
                          headingRowColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                            return Color(0xffF4F7FB).withOpacity(0.2);
                          }),
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Model',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Weight',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Price',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Note',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Forward P/E Valuation')),
                                DataCell(Text('10%')),
                                DataCell(Text('174,372')),
                                DataCell(Text('Relative method based on comparation average industries and market')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Forward P/BV Model')),
                                DataCell(Text('25%')),
                                DataCell(Text('47,900')),
                                DataCell(Text('Relative method based on forward P/BV')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Residual Income Valuation')),
                                DataCell(Text('25%')),
                                DataCell(Text('94,906')),
                                DataCell(Text('Net income valuation')),
                              ],
                            ),
                          ],
                        ),
                        // ),
                      ),
                      Container(
                          margin: EdgeInsetsResponsive.only(left: 50.sp, bottom: 100.sp),
                          alignment: Alignment.centerLeft,
                          child: Text("Due to different levels of uncertainty in the forecast of future cash flows (dividend, FCFE, FCFF), justified P/E and P/B based on fundamentals are assigned higher weights, followed by DDM, FCFF and FCFE model. Composite intrinsic value is estimated at 84,472 VND per share.",
                            style: TextStyle(color: Color(0xffC17325))
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 10.sp, color: Colors.grey)
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
                          alignment: Alignment.centerLeft,
                          child: Text("DÒNG TIỀN CỦA MỘT SỐ PHƯƠNG PHÁP", style: TextStyle(color: Colors.blue),)
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          dataRowHeight: 90.sp,
                          headingRowColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                            return Color(0xffF4F7FB).withOpacity(0.2);
                          }),
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                '',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Stock',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Sector',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Market',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Price')),
                                DataCell(Text('76,000')),
                                DataCell(Text('')),
                                DataCell(Text('')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('P/E Ratio')),
                                DataCell(Text('4.81')),
                                DataCell(Text('3.99')),
                                DataCell(Text('28.77')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('P/BV')),
                                DataCell(Text('1.31')),
                                DataCell(Text('2.03')),
                                DataCell(Text('1.39')),
                              ],
                            ),
                          ],
                        ),
                      ),  // ),
                      Container(
                          margin: EdgeInsetsResponsive.only(left: 50.sp, bottom: 100.sp),
                          alignment: Alignment.centerLeft,
                          child: Text("Due to different levels of uncertainty in the forecast of future cash flows (dividend, FCFE, FCFF), justified P/E and P/B based on fundamentals are assigned higher weights, followed by DDM, FCFF and FCFE model. Composite intrinsic value is estimated at 84,472 VND per share.",
                              style: TextStyle(color: Color(0xffC17325))
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                      bottom: BorderSide(width: 10.sp, color: Colors.grey)
                    ),
                  ),
                   child: Column(
                     children: [
                       Container(
                           margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
                           alignment: Alignment.centerLeft,
                           child: Text("FORWARD P/E VALUATION", style: TextStyle(color: Colors.blue))
                       ),

                      Container(
                          margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                          padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width: 1.sp, color: Colors.grey)
                            ),
                          ),
                          child: Row(
                           children: [
                              Expanded(
                                  child: Align(
                                    child: Text(""),
                                    alignment: Alignment.centerLeft,
                                  )
                              ),
                              Expanded(
                                 child: Align(
                                   child: Text("Q4"),
                                   alignment: Alignment.centerRight,
                                 )
                              )
                           ],
                         )
                      ),
                       Container(
                           margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                           padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                           decoration: BoxDecoration(
                             border: Border(
                                 bottom: BorderSide(width: 1.sp, color: Colors.grey)
                             ),
                           ),
                           child: Row(
                             children: [
                               Expanded(
                                   child: Align(
                                     child: Text("Book value"),
                                     alignment: Alignment.centerLeft,
                                   )
                               ),
                               Expanded(
                                   child: Align(
                                     child: Text("6,828"),
                                     alignment: Alignment.centerRight,
                                   )
                               )
                             ],
                           )
                       ),
                       Container(
                           margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                           padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                           decoration: BoxDecoration(
                             border: Border(
                                 bottom: BorderSide(width: 1.sp, color: Colors.grey)
                             ),
                           ),
                           child: Row(
                             children: [
                               Expanded(
                                   child: Align(
                                     child: Text("P/BV forward"),
                                     alignment: Alignment.centerLeft,
                                   )
                               ),
                               Expanded(
                                   child: Align(
                                     child: Text("1.31"),
                                     alignment: Alignment.centerRight,
                                   )
                               )
                             ],
                           )
                       ),
                     ],
                   )),
                Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 10.sp, color: Colors.grey)
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
                            alignment: Alignment.centerLeft,
                            child: Text("P/BV VALUATION", style: TextStyle(color: Colors.blue))
                        ),

                        Container(
                            margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                            padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1.sp, color: Colors.grey)
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      child: Text(""),
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                                Expanded(
                                    child: Align(
                                      child: Text("Q4"),
                                      alignment: Alignment.centerRight,
                                    )
                                )
                              ],
                            )
                        ),
                        Container(
                            margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                            padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1.sp, color: Colors.grey)
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      child: Text("Book value"),
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                                Expanded(
                                    child: Align(
                                      child: Text("6,828"),
                                      alignment: Alignment.centerRight,
                                    )
                                )
                              ],
                            )
                        ),
                        Container(
                            margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                            padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1.sp, color: Colors.grey)
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      child: Text("P/BV forward"),
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                                Expanded(
                                    child: Align(
                                      child: Text("1.31"),
                                      alignment: Alignment.centerRight,
                                    )
                                )
                              ],
                            )
                        ),
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 10.sp, color: Colors.grey)
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
                            alignment: Alignment.centerLeft,
                            child: Text("EPS MODEL", style: TextStyle(color: Colors.blue))
                        ),

                        Container(
                            margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                            padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1.sp, color: Colors.grey)
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      child: Text(""),
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                                Expanded(
                                    child: Align(
                                      child: Text("Q4"),
                                      alignment: Alignment.centerRight,
                                    )
                                )
                              ],
                            )
                        ),
                        Container(
                            margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                            padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1.sp, color: Colors.grey)
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      child: Text("Book value"),
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                                Expanded(
                                    child: Align(
                                      child: Text("6,828"),
                                      alignment: Alignment.centerRight,
                                    )
                                )
                              ],
                            )
                        ),
                        Container(
                            margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
                            padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1.sp, color: Colors.grey)
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      child: Text("P/BV forward"),
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                                Expanded(
                                    child: Align(
                                      child: Text("1.31"),
                                      alignment: Alignment.centerRight,
                                    )
                                )
                              ],
                            )
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
