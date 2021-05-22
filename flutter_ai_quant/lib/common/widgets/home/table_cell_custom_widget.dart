import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class TableCellCustomWidget extends StatelessWidget {
  TableCellCustomWidget({Key key, this.title: ""}) : super(key: key);
  final String title;

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
        padding: EdgeInsetsResponsive.fromLTRB(0, 15, 0, 15),
        child: Center(
            child: Text(title,
                style: TextStyle(color: Colors.white, fontSize: 42.sp))),
      ),
    );
  }
}
