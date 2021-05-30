import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/set_up/theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/button/data_table_button_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/line_chart_v2_widget.dart';

class PriceListScreen extends StatefulWidget {
  @override
  _PriceListScreenState createState() => _PriceListScreenState();
}

class _PriceListScreenState extends State<PriceListScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Container(
        color: Color(0xFF074884),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFF062D52),
            body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Theme(
                  data: Theme.of(context).copyWith(
                      dividerColor: Color(0xFF4C6C8A),
                      dataTableTheme: CustomTheme.kThemeDataTable),
                  child: IntrinsicWidth(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 150.sp,
                          color: Color(0xFF074884),
                        ),
                        DataTable(
                          headingRowHeight: 150.sp,
                          columns: [
                            DataColumn(
                                label: Text("Mã", textAlign: TextAlign.center)),
                            DataColumn(
                                label: Text("Mua/ Bán",
                                    textAlign: TextAlign.center)),
                            DataColumn(
                                label: Text("Hôm nay",
                                    textAlign: TextAlign.center)),
                            DataColumn(
                                label: Text("TC", textAlign: TextAlign.center)),
                            DataColumn(
                                label:
                                    Text("Trần", textAlign: TextAlign.center)),
                            DataColumn(
                                label:
                                    Text("Sàn", textAlign: TextAlign.center)),
                            DataColumn(
                                label: Text("Tổng KI",
                                    textAlign: TextAlign.center)),

                            //
                            DataColumn(
                              label: Column(
                                children: <Widget>[
                                  Text("Bên mua", textAlign: TextAlign.center),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Giá 3",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 60),
                                          child: Text("KL3",
                                              textAlign: TextAlign.center)),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Giá 2",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 60),
                                          child: Text("KL2",
                                              textAlign: TextAlign.center)),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Giá 1",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          child: Text("KL1",
                                              textAlign: TextAlign.center)),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //
                            DataColumn(
                              label: Column(
                                children: <Widget>[
                                  Text("Khớp lệnh",
                                      textAlign: TextAlign.center),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Giá",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 60),
                                          child: Text("KL",
                                              textAlign: TextAlign.center)),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("+/-",
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //
                            DataColumn(
                              label: Column(
                                children: <Widget>[
                                  Text("Giá", textAlign: TextAlign.center),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Cao",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 60),
                                          child: Text("TB",
                                              textAlign: TextAlign.center)),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Thấp",
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //
                            DataColumn(
                              label: Column(
                                children: <Widget>[
                                  Text("Dư", textAlign: TextAlign.center),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Mua",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 60),
                                          child: Text("Bán",
                                              textAlign: TextAlign.center)),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //
                            DataColumn(
                              label: Column(
                                children: <Widget>[
                                  Text("ĐTNN", textAlign: TextAlign.center),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 60),
                                        child: Text("Mua",
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 60),
                                          child: Text("Bán",
                                              textAlign: TextAlign.center)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(
                                  Center(child: Text("LCG")),
                                ),
                                DataCell(
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        DataTableButtonWidget(
                                          title: "Mua",
                                          backgroundColor: Color(0xFF1EE654),
                                          callbackAction: () {},
                                        ),
                                        SizedBoxResponsive(width: 20.sp),
                                        DataTableButtonWidget(
                                          title: "Bán",
                                          backgroundColor: Color(0xFFED6060),
                                          callbackAction: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Center(
                                    child: ContainerResponsive(
                                      width: 250,
                                      height: 120,
                                      child: SimpleLineChartV2(
                                          SimpleLineChartV2.withSampleData()
                                              .seriesList),
                                    ),
                                  ),
                                ),
                                DataCell(Center(child: Text("10.15"))),
                                DataCell(Center(child: Text("10.15"))),
                                DataCell(Center(child: Text("10.15"))),
                                DataCell(Center(child: Text("10.15"))),

                                //
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 40),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 40),
                                        child: Center(child: Text("10.15")),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 40),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 40),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 40),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                          child: Center(child: Text("10.15"))),
                                    ],
                                  ),
                                ),

                                //
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 30),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 40),
                                        child: Center(child: Text("10.15")),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 40),
                                          child: Center(child: Text("10.15"))),
                                    ],
                                  ),
                                ),

                                //
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 30),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 40),
                                        child: Center(child: Text("10.15")),
                                      ),
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 40),
                                          child: Center(child: Text("10.15"))),
                                    ],
                                  ),
                                ),

                                //
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 30),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 40),
                                        child: Center(child: Text("10.15")),
                                      ),
                                    ],
                                  ),
                                ),

                                //
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsetsResponsive.only(
                                              right: 30),
                                          child: Center(child: Text("10.15"))),
                                      Container(
                                        margin: EdgeInsetsResponsive.only(
                                            right: 40),
                                        child: Center(child: Text("10.15")),
                                      ),
                                    ],
                                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
