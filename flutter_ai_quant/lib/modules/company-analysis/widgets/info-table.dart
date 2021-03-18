import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
class InfoTable extends StatefulWidget {
  final String title;
  final String footerNote;
  final List<String> columnHeaders;
  final List<List<String>> data;
  InfoTable(this.title, this.columnHeaders, this.data, [this.footerNote = "", Key key]) : super(key: key);
  @override
  _InfoTableState createState() => _InfoTableState();
}

class _InfoTableState extends State<InfoTable> {
  List<DataColumn> _generateHeader(){
    List<DataColumn> headers = [];
    widget.columnHeaders.forEach((text){
      headers.add(DataColumn(
          label: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        )
      );
    });
    return headers;
  }
  List<DataRow> _generateRows(){
    List<DataRow> rows = [];
    widget.data.forEach((row){
      List<DataCell> tmps = [];
      row.forEach((text){
        tmps.add(DataCell(Text(text)));
      });
      rows.add( DataRow(
          cells: tmps
      ));
    });
    return rows;
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
      child: Column(
        children: [
          Container(
              margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
              alignment: Alignment.centerLeft,
              child: Text(widget.title, style: TextStyle(color: Colors.blue))
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              dataRowHeight: 90.sp,
              headingRowColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                return Color(0xffF4F7FB).withOpacity(0.2);
              }),
              columns: _generateHeader(),
              rows: _generateRows(),
            ),
            // ),
          ),
          widget.footerNote != "" ?
          Container(
              margin: EdgeInsetsResponsive.only(left: 50.sp, bottom: 100.sp),
              alignment: Alignment.centerLeft,
              child: Text("Due to different levels of uncertainty in the forecast of future cash flows (dividend, FCFE, FCFF), justified P/E and P/B based on fundamentals are assigned higher weights, followed by DDM, FCFF and FCFE model. Composite intrinsic value is estimated at 84,472 VND per share.",
                  style: TextStyle(color: Color(0xffC17325))
              )
          ) : Container(width: 0, height: 0),
        ],
      ),
    );
  }
}
