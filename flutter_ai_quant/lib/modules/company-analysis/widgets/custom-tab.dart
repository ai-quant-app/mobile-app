import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomTab extends StatelessWidget {
  final String title;
  final bool isChoose;
  CustomTab(this.title, this.isChoose);
  @override
  Widget build(BuildContext context) {
    return isChoose ? Tab(text: title):  Tab(
      child: Container(
        padding: EdgeInsetsResponsive.only(
            left: 100.sp, right: 100.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffE1E8ED),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(title),
        ),
      ),
    );
  }
}
