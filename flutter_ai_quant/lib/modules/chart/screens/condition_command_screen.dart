import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class ConditionCommandScreen extends StatefulWidget {
  @override
  _ConditionCommandState createState() => _ConditionCommandState();
}

class _ConditionCommandState extends State<ConditionCommandScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
        height: 1920, width: 1080, allowFontScaling: false);

    return ResponsiveWidgets.builder(
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          backgroundColor: Color(0xFF062D52),
          title: Text(
            "Lệnh Điều Kiện",
            style: TextStyle(fontSize: 65.sp),
          ),
        ),
      ),
    );
  }
}
