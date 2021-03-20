import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:flutter_ai_quant/modules/home/components/UI/TableCellCustom.dart';
import 'package:flutter_ai_quant/modules/home/components/UI/line_chart_v2.dart';

class RecommendedStocks extends StatelessWidget {
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
      allowFontScaling: true,
      child: Container(
        padding: EdgeInsetsResponsive.fromLTRB(30, 0.0, 20, 50),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsResponsive.fromLTRB(0, 0, 0, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mã khuyến nghị",
                      style: TextStyle(
                        color: Color(0xFF219EE3),
                        fontSize: 42.sp,
                      )),
                ],
              ),
            ),
            Table(
              border: TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.white, style: BorderStyle.solid)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(33),
              },
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    TableCellCustom(title: "Mã"),
                    TableCellCustom(title: "+/-"),
                    TableCellCustom(title: "Xu thế"),
                    TableCellCustom(title: "Điểm xếp hạng"),
                    TableCellCustom(title: "Đồ thị"),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCellCustom(title: "LCG"),
                    TableCellCustom(title: "+8%"),
                    TableCellCustom(title: "Tăng"),
                    TableCellCustom(title: "123"),
                    ContainerResponsive(
                      width: MediaQuery.of(context).size.height / 3,
                      height: 120,
                      child: SimpleLineChartV2(
                          SimpleLineChartV2.withSampleData().seriesList),
                    ),
                  ],
                ),

                TableRow(
                  children: <Widget>[
                    TableCellCustom(title: "BBC"),
                    TableCellCustom(title: "+8%"),
                    TableCellCustom(title: "Tăng"),
                    TableCellCustom(title: "123"),
                    ContainerResponsive(
                      width: MediaQuery.of(context).size.height / 3,
                      height: 120,
                      child: SimpleLineChartV2(
                          SimpleLineChartV2.withSampleData().seriesList),
                    ),
                  ],
                ),

                TableRow(
                  children: <Widget>[
                    TableCellCustom(title: "BID"),
                    TableCellCustom(title: "+8%"),
                    TableCellCustom(title: "Tăng"),
                    TableCellCustom(title: "123"),
                    ContainerResponsive(
                      width: MediaQuery.of(context).size.height / 3,
                      height: 120,
                      child: SimpleLineChartV2(
                          SimpleLineChartV2.withSampleData().seriesList),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
