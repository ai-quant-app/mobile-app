import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class CompaniesScreen extends StatefulWidget {
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  @override
  Widget build(BuildContext context) {

    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff074884),
          title: PreferredSize(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Text(
                        "LCG",
                        style: new TextStyle(color: Colors.white, fontSize: 70.sp),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "10.1",
                        style:
                            new TextStyle(color: Color(0xff50FD2F), fontSize: 70.sp),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "0 (0%)",
                        style:
                            new TextStyle(color: Color(0xff50FD2F), fontSize: 50.sp),
                      ),
                      Container(
                        height: 40.sp,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                          width: 100.sp,

                        ),
                      ),
                      Text(
                        "HOSE",
                        style: new TextStyle(color: Colors.white, fontSize: 50.sp),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            preferredSize: Size.fromHeight(300),
          ),
        ),
      ),
    );
  }
}
