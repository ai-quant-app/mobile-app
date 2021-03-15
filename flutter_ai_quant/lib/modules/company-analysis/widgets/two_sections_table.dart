import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-table.model.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class TwoSectionsTable extends StatelessWidget {
  final List<TwoSectionsTableModel> data;
  final String firstSectionTitle;
  final String secondSectionTitle;
  TwoSectionsTable(this.firstSectionTitle, this.secondSectionTitle, this.data);
   List<TableRow> _generate() {
     List<TableRow> ret = [];
     ret.add(
       TableRow( children: [
         TableCell(child: Text(firstSectionTitle, style: TextStyle(fontSize: 50.sp, color: Color(0xff26B1FB)))),
         TableCell(child: Text(secondSectionTitle, style: TextStyle(fontSize: 50.sp, color: Color(0xff26B1FB)))),
      ])
     );

     data.forEach((TwoSectionsTableModel item) {
       ret.add(TableRow(children: [
         Container(
             margin: EdgeInsetsResponsive.only(top: 20.sp),
             child: Row(children: [
               Expanded(child: Text(item.firstColumn)),
               Expanded(child: Text(item.secondColumn)),
             ],
             )
         ),
         Container(
             margin: EdgeInsetsResponsive.only(top: 20.sp),
             child: Row(children: [
               Expanded(child: Text(item.thirdColumn)),
               Expanded(child: Text(item.fourthColumn)),
             ],
             )
         ),
       ]),
       );
     });
     return ret;
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(width: 10.sp, color: Colors.grey),
            bottom: BorderSide(width: 10.sp, color: Colors.grey)
        ),
      ),
      margin: EdgeInsetsResponsive.only(top: 50.sp, bottom: 100.sp),
      padding: EdgeInsetsResponsive.only(top: 50.sp, bottom: 100.sp, left: 50.sp, right: 50.sp),
      child: Table(children: _generate()),
    );
  }
}


