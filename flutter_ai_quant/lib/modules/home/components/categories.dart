import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

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
                  Text("Danh mục",
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
                0: FixedColumnWidth(30),
              },
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Container(
                      child: Center( child: Text("Mã", style: TextStyle(color: Colors.white, fontSize: 42.sp))),
                    ),
                    Container(
                      child: Center(child: Text("Giá", style: TextStyle(color: Colors.white, fontSize: 42.sp ))),
                    ),
                    Container(
                      child: Center(child: Text("+/-", style: TextStyle(color: Colors.white, fontSize: 42.sp))),
                    ),
                    Container(
                      child: Center(child: Text("Xu thế", style: TextStyle(color: Colors.white, fontSize: 42.sp))),
                    ),
                    Container(
                      child: Center(child: Text("Xếp hạng", style: TextStyle(color: Colors.white, fontSize: 42.sp))),
                    ),
                    Container(
                      child: Center(child: Text("Đồ thị", style: TextStyle(color: Colors.white, fontSize: 42.sp))),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      child: Center(child: Text("LCG", style: TextStyle(color: Colors.white))),
                    ),
                    Container(
                      child: Center(child: Text("10.15", style: TextStyle(color: Colors.white))),
                    ),
                    Container(
                      child: Center(child: Text("+8%", style: TextStyle(color: Colors.white))),
                    ),
                    Container(
                      child: Center(child: Text("Tăng", style: TextStyle(color: Colors.white))),
                    ),
                    Container(
                      child: Center(child: Text("123", style: TextStyle(color: Colors.white))),
                    ),
                    Container(
                      child: Center(child: Text("Đồ thị", style: TextStyle(color: Colors.white))),
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
