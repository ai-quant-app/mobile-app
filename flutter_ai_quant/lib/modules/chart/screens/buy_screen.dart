import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
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
            "Giao Dịch",
            style: TextStyle(fontSize: 65.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20, right: 150),
                      child: Text(
                        "Mã CK",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsetsResponsive.only(right: 20),
                        child: CustomTextFieldWidget(),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 230),
                      child: Text(
                        "Giá",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsetsResponsive.only(right: 20),
                          child: CustomTextFieldWidget()),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 50),
                      child: Text(
                        "Khối lượng",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsetsResponsive.only(right: 20),
                          child: CustomTextFieldWidget()),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 20),
                      child: Text(
                        "KL chia lệnh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsetsResponsive.only(right: 20),
                          child: CustomTextFieldWidget()),
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
