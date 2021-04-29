import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class DataTableButtonWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Function callbackAction;

  DataTableButtonWidget({
    this.title,
    this.backgroundColor,
    this.callbackAction,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 45.sp),
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.sp)),
        ),
        onPressed: () => callbackAction);
  }
}
