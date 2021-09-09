import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/text_field/custom_select_widget.dart';
import 'package:flutter_ai_quant/common/widgets/text_field/confirm_popup_widget.dart';
import 'package:flutter_ai_quant/common/widgets/text_field/custom_textfield_widget.dart';

// import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';
// import 'package:flutter_ai_quant/modules/chart/widgets/custom_select_widget.dart';
// import 'package:flutter_ai_quant/modules/chart/widgets/confirm_popup_widget.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  bool checkedValue = true;
  String commandType = "Thông thường";
  final commandTypes = ["Thông thường", "Điều kiện"];

  void changeCommandType(String value) {
    setState(() {
      commandType = value;
    });
  }

  String type = "Mua";
  final types = ["Mua", "Bán", "Bán cầm cố"];

  void changeType(String value) {
    setState(() {
      type = value;
    });
  }

  String command = "LO";
  final commands = ["LO", "ATO", "ATC", "MP", "MAK", "MOK", "MTL", "PLO"];

  void changeCommand(String value) {
    setState(() {
      command = value;
    });
  }

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
              // Group Button
              Container(
                margin: EdgeInsetsResponsive.only(
                    left: 20, right: 20, top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    OutlinedButton(
                        child: Text("Mua", style: TextStyle(fontSize: 40.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Color(0xFF1ACB45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, "buy_screen")),
                    SizedBoxResponsive(width: 20),
                    OutlinedButton(
                        child: Text("Bán", style: TextStyle(fontSize: 40.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Color(0xFFED6060),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, "sell_screen")),
                    SizedBoxResponsive(width: 20),
                    OutlinedButton(
                        child:
                            Text("Làm Lại", style: TextStyle(fontSize: 40.sp)),
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
                            Text("Giỏ Lệnh", style: TextStyle(fontSize: 40.sp)),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFF26B1FB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                        ),
                        onPressed: () => Navigator.pushNamed(
                            context, "order_basket_screen")),
                  ],
                ),
              ),

              // Group Text Field
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20, right: 190),
                      child: Text(
                        "Loại lệnh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsetsResponsive.only(right: 20),
                        child: CustomSelectWidget(
                          list: commandTypes,
                          selected: commandType,
                          handleSelect: changeCommandType,
                        ),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 200),
                      child: Text(
                        "Mua bán",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsetsResponsive.only(right: 20),
                        child: CustomSelectWidget(
                          list: types,
                          selected: type,
                          handleSelect: changeType,
                        ),
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
                        "Mã CK",
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 270),
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
                        child: CustomSelectWidget(
                          list: commands,
                          selected: command,
                          handleSelect: changeCommand,
                        ),
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 300),
                      child: Text(
                        "Giá",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 160),
                      child: Text(
                        "Khối lượng",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
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
                      margin: EdgeInsetsResponsive.only(left: 20, right: 130),
                      child: Text(
                        "KL chia lệnh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
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
              Row(
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
                    "KL mặc định",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),

              // Group Button
              Container(
                margin: EdgeInsetsResponsive.only(
                    left: 20, right: 20, top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ConfirmopUpWidget(),
                  ],
                ),
              ),

              // Line
              Divider(color: Color(0xFF405F7B), thickness: 3.sp),

              // Infomation
              Container(
                alignment: Alignment.topLeft,
                margin:
                    EdgeInsetsResponsive.only(left: 20, top: 25, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 20),
                      child: Text(
                        "Thông Tin Tài Khoản",
                        style: TextStyle(
                          color: Color(0xFF1F95D7),
                          fontSize: 45.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 10),
                      child: Text(
                        "Tiền mặt và tiền NH",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 10),
                      child: Text(
                        "Tiền có thể ứng trước",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 10),
                      child: Text(
                        "Sức mua tối ưu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 10),
                      child: Text(
                        "SL mua tối đa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 10),
                      child: Text(
                        "Tỷ lệ ký quỹ thực tế",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 10),
                      child: Text(
                        "Tỷ lệ an toàn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //
              Container(
                alignment: Alignment.topLeft,
                margin:
                    EdgeInsetsResponsive.only(left: 20, top: 10, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 20),
                      child: Text(
                        "CK hiện có",
                        style: TextStyle(
                          color: Color(0xFF1F95D7),
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 20),
                      child: Text(
                        "CK chờ về",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 20),
                      child: Text(
                        "CK phong tỏa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsResponsive.only(bottom: 20),
                      child: Text(
                        "CK cầm cố",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
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
