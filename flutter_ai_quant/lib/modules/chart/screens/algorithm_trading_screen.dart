import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class AlgorithmTradingScreen extends StatefulWidget {
  @override
  _AlgorithmTradingScreenState createState() => _AlgorithmTradingScreenState();
}

class _AlgorithmTradingScreenState extends State<AlgorithmTradingScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
        height: 1920, width: 1080, allowFontScaling: false);

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF074784),
          title: Text(
            "Lệnh Giao Dịch Theo Thuật Toán",
            maxLines: 2,
            style: TextStyle(fontSize: 55.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsetsResponsive.only(top: 50, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20),
                      child: Text(
                        "Chiến lược",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsetsResponsive.only(left: 50, right: 20),
                        child: CustomTextFieldWidget(
                            suffixIcon: Icons.arrow_drop_down),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20),
                      child: Text(
                        "Filter",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              EdgeInsetsResponsive.only(left: 180, right: 20),
                          child: CustomTextFieldWidget(
                              suffixIcon: Icons.arrow_drop_down)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20),
                      child: Text(
                        "Trend",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              EdgeInsetsResponsive.only(left: 155, right: 20),
                          child: CustomTextFieldWidget(
                              suffixIcon: Icons.arrow_drop_down)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
