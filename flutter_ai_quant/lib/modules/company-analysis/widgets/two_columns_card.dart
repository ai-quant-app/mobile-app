import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class TwoColumnsCard extends StatefulWidget {
  final Map<String, String> data;
  TwoColumnsCard(this.data, {Key key}): super(key: key);
  @override
  _TwoColumnsCardState createState() => _TwoColumnsCardState();
}

class _TwoColumnsCardState extends State<TwoColumnsCard> {
   List<Widget> _generate() {
     List<Widget> ret = [];
     widget.data.forEach((key, value) {
       ret.add(Padding(
         padding: EdgeInsetsResponsive.only(top: 30.sp, bottom: 30.sp),
         child: Row(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Expanded(
               child: Text(key, style: TextStyle(fontWeight: FontWeight.bold)),
               flex: 4,
             ),
             Expanded(
               child: Text(value),
               flex: 6,
             ),
           ],
         ),
       ));
     });
     return ret;
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE1E8ED).withOpacity(0.27),
        borderRadius: BorderRadius.all(Radius.circular(40.sp)),
      ),
      padding: EdgeInsetsResponsive.only(top: 50.sp, bottom: 50.sp, left: 200.sp, right: 200.sp),
      margin: EdgeInsetsResponsive.all(100.sp),
      child: Column(
        children: this._generate()
      ),
    );
  }
}


