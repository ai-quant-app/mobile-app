import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';

class BasketTradeScreen extends StatefulWidget {
  @override
  _BasketTradeScreenState createState() => _BasketTradeScreenState();
}

class _BasketTradeScreenState extends State<BasketTradeScreen> {
  bool checkedValue = false;

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
            "Giỏ Lệnh",
            style: TextStyle(fontSize: 65.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Group Text Field
              Container(
                margin: EdgeInsetsResponsive.only(top: 50, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20),
                      child: Text(
                        "Giờ mở",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsetsResponsive.only(left: 95, right: 20),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 50),
                      child: Text(
                        "Lệnh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              EdgeInsetsResponsive.only(left: 50, right: 20),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 50),
                      child: Text(
                        "Ngày hiệu lực",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              EdgeInsetsResponsive.only(left: 100, right: 20),
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
                        "Cổ phiếu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              EdgeInsetsResponsive.only(left: 145, right: 20),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 230),
                      child: Text(
                        "Số lượng",
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
                        "Giá mua",
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
                        "Ngày kết thúc",
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
                        "Chẻ lệnh",
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
                        "Số lệnh",
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

              // Check Box
              Container(
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 4.sp,
                      child: Checkbox(
                          value: checkedValue,
                          checkColor: Colors.black,
                          onChanged: (value) {
                            setState(() => checkedValue = !checkedValue);
                          }),
                    ),
                    SizedBoxResponsive(width: 25),
                    Text(
                      "Lặp lại",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 4.sp,
                      child: Checkbox(
                          value: checkedValue,
                          checkColor: Colors.black,
                          onChanged: (value) {
                            setState(() => checkedValue = !checkedValue);
                          }),
                    ),
                    SizedBoxResponsive(width: 25),
                    Text(
                      "Tự động sinh lệnh mẫu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),

              //
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20, right: 20),
                      child: Text(
                        "Lệnh mua",
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
                        "Lệnh bán",
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

              // Button
              Container(
                margin:
                    EdgeInsetsResponsive.only(left: 20, right: 20, bottom: 20),
                height: 150.sp,
                width: double.infinity,
                child: OutlinedButton(
                  child: Text("Thực hiện",
                      style: TextStyle(fontSize: 45.sp, color: Colors.white)),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xFF26B1FB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.sp)),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
