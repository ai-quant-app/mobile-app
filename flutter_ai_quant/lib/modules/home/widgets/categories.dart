import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/home/widgets/UI/table_cell_custom.dart';
import 'package:flutter_ai_quant/modules/home/widgets/UI/line_chart_v2.dart';

class Categories extends StatelessWidget {
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
        padding: EdgeInsetsResponsive.fromLTRB(30, 0.0, 20, 50),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsResponsive.fromLTRB(0, 0, 0, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Danh mục",
                      style: TextStyle(
                        color: Color(0xFF219EE3),
                        fontSize: 42.sp,
                      )),
                  Container(
                    padding: EdgeInsetsResponsive.fromLTRB(0, 10, 0, 10),
                    width: 200,
                    height: 40,
                    decoration: new BoxDecoration(
                        color: Color(0xFF405F7B),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: 'Nhập mã',
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Table(
              border: TableBorder(
                  horizontalInside: BorderSide(
                      width: 1, color: Colors.white, style: BorderStyle.solid)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const <int, TableColumnWidth>{
                0: FractionColumnWidth(.1),
                1: FractionColumnWidth(.2),
                2: FractionColumnWidth(.1),
              },
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    TableCellCustom(title: "Mã"),
                    TableCellCustom(title: "Giá"),
                    TableCellCustom(title: "+/-"),
                    TableCellCustom(title: "Xu thế"),
                    TableCellCustom(title: "Xếp hạng"),
                    TableCellCustom(title: "Đồ thị"),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCellCustom(title: "LCG"),
                    TableCellCustom(title: "10.15"),
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
                    TableCellCustom(title: "10.15"),
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
                    TableCellCustom(title: "10.15"),
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
