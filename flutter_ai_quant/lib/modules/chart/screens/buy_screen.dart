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
              // Group Text Field
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

              // Group Button
              Container(
                margin: EdgeInsetsResponsive.only(
                    left: 20, right: 20, top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    OutlinedButton(
                        child: Text("Mua", style: TextStyle(fontSize: 45.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Color(0xFF1ACB45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () {}),
                    SizedBoxResponsive(width: 20),
                    OutlinedButton(
                        child: Text("Bán", style: TextStyle(fontSize: 45.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Color(0xFFED6060),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () {}),
                    SizedBoxResponsive(width: 20),
                    OutlinedButton(
                        child:
                            Text("Làm Lại", style: TextStyle(fontSize: 45.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () {}),
                    SizedBoxResponsive(width: 20),
                    OutlinedButton(
                        child:
                            Text("Giỏ Lệnh", style: TextStyle(fontSize: 45.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFF26B1FB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),

              // Line
              Divider(color: Color(0xFF405F7B), thickness: 3.sp),

              // Infomation
              Column(
                children: <Widget>[
                  Text("Thông Tin Tài KHoản"),
                  Text("Tiền mặt và tiền NH"),
                  Text("Tiền có thể ứng trước"),
                  Text("Sức mua tối ưu"),
                  Text("SL mua tối đa"),
                  Text("Tỷ lệ ký quỹ thực tế"),
                  Text("Tỷ lệ an toàn"),
                ],
              ),

              //
              Column(
                children: <Widget>[
                  Text("CK hiện có"),
                  Text("CK chở về"),
                  Text("CK phong tỏa"),
                  Text("Ck cầm cố"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
