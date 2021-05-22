import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/home/line_chart_v2_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/table_cell_custom_widget.dart';

class RecommendedStocksWidget extends StatelessWidget {
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
                  Text(
                    "Mã khuyến nghị",
                    style: TextStyle(
                      color: Color(0xFF219EE3),
                      fontSize: 42.sp,
                    ),
                  ),
                ],
              ),
            ),
            Table(
              border: TableBorder(
                horizontalInside: BorderSide(
                  width: 1,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const <int, TableColumnWidth>{
                0: FractionColumnWidth(.1),
                1: FractionColumnWidth(.2),
                2: FractionColumnWidth(.2),
                3: FractionColumnWidth(.3),
                4: FractionColumnWidth(.2),
              },
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    TableCellCustomWidget(title: "Mã"),
                    TableCellCustomWidget(title: "+/-"),
                    TableCellCustomWidget(title: "Xu thế"),
                    TableCellCustomWidget(title: "Điểm xếp hạng"),
                    TableCellCustomWidget(title: "Đồ thị"),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCellCustomWidget(title: "LCG"),
                    TableCellCustomWidget(title: "+8%"),
                    TableCellCustomWidget(title: "Tăng"),
                    TableCellCustomWidget(title: "123"),
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
                    TableCellCustomWidget(title: "BBC"),
                    TableCellCustomWidget(title: "+8%"),
                    TableCellCustomWidget(title: "Tăng"),
                    TableCellCustomWidget(title: "123"),
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
                    TableCellCustomWidget(title: "BID"),
                    TableCellCustomWidget(title: "+8%"),
                    TableCellCustomWidget(title: "Tăng"),
                    TableCellCustomWidget(title: "123"),
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
