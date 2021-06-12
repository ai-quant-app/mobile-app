import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/set_up/theme.dart';

class PrepareNStockOverviewSubScreen extends StatefulWidget {
  @override
  _PrepareNStockOverviewSubScreenState createState() =>
      _PrepareNStockOverviewSubScreenState();
}

class _PrepareNStockOverviewSubScreenState
    extends State<PrepareNStockOverviewSubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF062D52),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsetsResponsive.only(left: 25, bottom: 25),
            child: Text(
              "RESULTS",
              style: TextStyle(
                color: Color(0xFF9BABBA),
                fontSize: 45.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Data Table Result
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Theme(
              data: Theme.of(context).copyWith(
                  dividerColor: Color(0xFF4C6C8A),
                  dataTableTheme: CustomTheme.kThemePrepareStockDataTable),
              child: IntrinsicWidth(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 100.sp,
                      color: Color(0xFF365574),
                    ),
                    DataTable(
                      headingRowHeight: 100.sp,
                      columns: [
                        DataColumn(
                            label:
                                Text("Symbols", textAlign: TextAlign.center)),

                        //
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("FB", textAlign: TextAlign.center)),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                            DataCell(Center(
                                child: Text("Company",
                                    textAlign: TextAlign.center))),

                            //
                            DataCell(Center(
                                child: Text("10.15",
                                    textAlign: TextAlign.center))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("10.15"))),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Price Info
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsetsResponsive.only(left: 25, top: 25, bottom: 25),
            child: Text(
              "PRICE INFOMATION",
              style: TextStyle(
                color: Color(0xFF24ABF3),
                fontSize: 45.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Data Table Price Info
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Theme(
              data: Theme.of(context).copyWith(
                  dividerColor: Color(0xFF4C6C8A),
                  dataTableTheme: CustomTheme.kThemePrepareStockDataTable),
              child: IntrinsicWidth(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 100.sp,
                      color: Color(0xFF365574),
                    ),
                    DataTable(
                      headingRowHeight: 100.sp,
                      columns: [
                        DataColumn(
                          label: Text("Exchange", textAlign: TextAlign.center),
                        ),
                        DataColumn(
                          label: Text("Đồ Thị", textAlign: TextAlign.center),
                        ),
                        DataColumn(
                          label: Text("NASDAQ", textAlign: TextAlign.center),
                        ),
                      ],
                      rows: [
                        // Price Info
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Open", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("High", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "Low",
                              ),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Last", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Chance", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("% Chance", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Volume", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("20-Day Average Volume",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Previous Close",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Industry", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text("Option", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("10.15", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        // Technicals
                        DataRow(
                          cells: [
                            DataCell(
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsetsResponsive.only(top: 50),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "TECHNICALS",
                                      style: TextStyle(
                                        color: Color(0xFF24ABF3),
                                        fontSize: 45.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DataCell(
                              Text(""),
                            ),
                            DataCell(
                              Text(""),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("20-Day Moving Average",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("20-Day Raw Stochastic",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("20-Day Relative Strength",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("Weighted Alpha",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("Today's Opinion",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("Previous Opinion",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("Last Month's Opinion",
                                  textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        // Performance
                        DataRow(
                          cells: [
                            DataCell(
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsetsResponsive.only(
                                        top: 25, bottom: 5),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "PERFORMANCE",
                                      style: TextStyle(
                                        color: Color(0xFF24ABF3),
                                        fontSize: 45.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "5-DAYS",
                                      style: TextStyle(
                                        color: Color(0xFF9BABBA),
                                        fontSize: 45.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DataCell(
                              Text(""),
                            ),
                            DataCell(
                              Text(""),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("% Chg", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("Low", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("High", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsetsResponsive.only(top: 50),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "1-MONTH",
                                      style: TextStyle(
                                        color: Color(0xFF9BABBA),
                                        fontSize: 45.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DataCell(
                              Text(""),
                            ),
                            DataCell(
                              Text(""),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("% Chg", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("Low", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),

                        DataRow(
                          cells: [
                            DataCell(
                              Text("High", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                            DataCell(
                              Text("", textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
