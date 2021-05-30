import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class EnterSymbolButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  EnterSymbolButtonWidget({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 250.sp,
      margin: EdgeInsetsResponsive.only(right: 50),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25.sp)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.cancel_outlined,
                size: 70.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
