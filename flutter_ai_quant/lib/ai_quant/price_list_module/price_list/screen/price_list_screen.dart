import 'package:flutter/material.dart';
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
                      dataTableTheme: DataTableThemeData(
                        headingTextStyle: TextStyle(
                          fontSize: 55.sp,
                          color: Colors.white,
                        ),
                        dataTextStyle: TextStyle(
                          fontSize: 50.sp,
                          color: Colors.white,
                        ),
                      )),
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
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(
                                Center(child: Text("LCG")),
                              ),
                              DataCell(
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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

                              // DataCell(Center(child: Text("10.15"))),
                              // DataCell(Center(child: Text("10.15"))),
                            ]),
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
