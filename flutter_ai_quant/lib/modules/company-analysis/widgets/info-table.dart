import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class InfoTable extends StatefulWidget {
  final String title;
  final String footerNote;
  final Color footerColor;
  final List<String> columnHeaders;
  final List<List<String>> data;
  final bool hasTopBorder;
  final bool hasBottomBorder;
  final bool hasHeaders;

  InfoTable(
    this.title, 
    this.columnHeaders, 
    this.data,
    {
      this.footerNote = "", 
      this.footerColor = const Color(0xFFC17325), 
      this.hasTopBorder = true, 
      this.hasBottomBorder = true,
      this.hasHeaders = true,
      Key key
    }
  ) : super(key: key);
  @override
  _InfoTableState createState() => _InfoTableState();
}

class _InfoTableState extends State<InfoTable> {
  List<DataColumn> _generateHeader(){
    List<DataColumn> headers = [];
    widget.columnHeaders.forEach((text){
      headers.add(
        DataColumn(
          label: Visibility(child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),)
          ,
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
        tmps.add(
          DataCell(
            Text(
              text,
              style: TextStyle(color: Theme.of(context).primaryColor),
            )
          )
        );
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
            top: widget.hasTopBorder ? BorderSide(width: 10.sp, color: Colors.grey) : BorderSide.none,
            bottom: widget.hasBottomBorder ? BorderSide(width: 10.sp, color: Colors.grey) : BorderSide.none,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          ),
          widget.footerNote != "" ?
          Container(
              margin: EdgeInsetsResponsive.only(left: 50.sp, bottom: 100.sp),
              alignment: Alignment.centerLeft,
              child: Text(widget.footerNote,
                  style: TextStyle(color: widget.footerColor)
              )
          ) : Container(width: 0, height: 0),
        ],
      ),
    );
  }
}
