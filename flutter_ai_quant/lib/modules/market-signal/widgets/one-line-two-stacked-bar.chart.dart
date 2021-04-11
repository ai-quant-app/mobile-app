import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class OneLineTwoStackedBarChart extends StatelessWidget {
  final double firstStackValue;
  final MaterialColor firstStackColor;
  final double secondStackValue;
  final MaterialColor secondStackColor;

  OneLineTwoStackedBarChart(
      {this.firstStackValue,
      this.firstStackColor = Colors.green,
      this.secondStackValue,
      this.secondStackColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );
    return ResponsiveWidgets.builder(
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(15.sp, 0, 0, 0),
                child: Text(
                  '${this.firstStackValue}%',
                  style: TextStyle(color: Color(0xff062D52)),
                ),
                height: 60.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.sp),
                      bottomLeft: Radius.circular(15.sp)),
                  color: Colors.green,
                ),
              ),
              flex: this.firstStackValue.round(),
            ),
            Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.fromLTRB(0, 0, 15.sp, 0),
                  child: Text(
                    '${this.secondStackValue}%',
                    style: TextStyle(color: Color(0xff062D52)),
                  ),
                  height: 60.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.sp),
                        bottomRight: Radius.circular(15.sp)),
                    color: Colors.red,
                  ),
                ),
                flex: 100 - this.firstStackValue.round()),
          ],
        )
    );
  }
}
