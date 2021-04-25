import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';

class OrderBasket extends StatefulWidget {
  @override
  _OrderBasketState createState() => _OrderBasketState();
}

class _OrderBasketState extends State<OrderBasket> {
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
            "Giỏ lệnh",
            style: TextStyle(fontSize: 65.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Text field
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Giờ mở",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Lệnh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Ngày hiệu lực",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Cổ phiếu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Số lượng",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Gía mua",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Ngày kết thúc",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Chẻ lệnh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Số lượng",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsetsResponsive.only(right: 20),
                        child: CustomTextFieldWidget(),
                      ),
                    ),
                  ],
                ),
              ),

              //Checkbox

              //order
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Lệnh mua",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 240),
                      child: Text(
                        "Lệnh bán",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsetsResponsive.only(right: 20),
                        child: CustomTextFieldWidget(),
                      ),
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
