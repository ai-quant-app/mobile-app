import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
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
                margin: EdgeInsetsResponsive.only(top: 50, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(left: 20),
                      child: Text(
                        "Loại lệnh",
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
                        "Mua bán",
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
                        "Mã CK",
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
              FittedBox(
                child: Container(
                  margin: EdgeInsetsResponsive.only(
                      left: 20, right: 20, top: 25, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                            child:
                                Text("Mua", style: TextStyle(fontSize: 45.sp)),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Color(0xFF0DCA70),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.sp)),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    backgroundColor: Color(0xFF355574),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2.2,
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsetsResponsive.all(40),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsetsResponsive.only(
                                                  bottom: 40),
                                              child: Center(
                                                child: Text(
                                                  "XÁC NHẬN ĐẶT LỆNH",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40.sp,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            // Group Row
                                            Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsetsResponsive
                                                        .only(bottom: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          "Loại lệnh đặt",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Short",
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //
                                                  Container(
                                                    margin: EdgeInsetsResponsive
                                                        .only(bottom: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          "Số hợp đồng",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                        Text(
                                                          "1",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //
                                                  Container(
                                                    margin: EdgeInsetsResponsive
                                                        .only(bottom: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          "Mã CK",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                        Text(
                                                          "VN30F1901",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //
                                                  Container(
                                                    margin: EdgeInsetsResponsive
                                                        .only(bottom: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          "Giá đặt",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                        Text(
                                                          "824",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 43.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //
                                                  Container(
                                                    margin: EdgeInsetsResponsive
                                                        .only(bottom: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsetsResponsive
                                                                  .only(
                                                                      right:
                                                                          100),
                                                          child: Text(
                                                            "Mã PIN",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 43.sp,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            height: 120.sp,
                                                            child:
                                                                CustomTextFieldWidget(
                                                                    obscure:
                                                                        true),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // Checked
                                            Container(
                                              margin: EdgeInsetsResponsive.only(
                                                  bottom: 50),
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsetsResponsive
                                                                  .only(
                                                                      right: 15,
                                                                      bottom:
                                                                          20),
                                                          child: Icon(
                                                            Icons
                                                                .check_circle_outline,
                                                            size: 70.sp,
                                                            color: Color(
                                                                0xFF0DCA70),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            "Lưu pin",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 43.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsetsResponsive
                                                                  .only(
                                                                      right:
                                                                          10),
                                                          child: Icon(
                                                            Icons
                                                                .check_circle_outline,
                                                            size: 70.sp,
                                                            color: Color(
                                                                0xFF0DCA70),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            "Thực hiện không cần xác nhận",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 43.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // Group Button
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      height: 120.sp,
                                                      child: OutlinedButton(
                                                        child: Text("Bán",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    45.sp)),
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                          primary: Colors.black,
                                                          backgroundColor:
                                                              Color(0xFFD5D5D5),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          60.sp)),
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBoxResponsive(width: 25),
                                                  Expanded(
                                                    child: Container(
                                                      height: 120.sp,
                                                      child: OutlinedButton(
                                                        child: Text("Đi lệnh",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    45.sp)),
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                          primary: Colors.black,
                                                          backgroundColor:
                                                              Color(0xFF26B1FA),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              60.sp,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
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
                                },
                              );
                            }),
                      ),
                      SizedBoxResponsive(width: 20),
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                          child: Text("Bán", style: TextStyle(fontSize: 45.sp)),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Color(0xFFED6060),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.sp)),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBoxResponsive(width: 20),
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                            child: Text("Làm Lại",
                                style: TextStyle(fontSize: 45.sp)),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.sp)),
                            ),
                            onPressed: () {}),
                      ),
                      SizedBoxResponsive(width: 20),
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                            child: Text("Giỏ Lệnh",
                                style: TextStyle(fontSize: 45.sp)),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Color(0xFF26B1FB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.sp)),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
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
                      "KL mặc định",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),

              // Line
              Container(
                  margin: EdgeInsetsResponsive.only(
                      left: 20, right: 25, bottom: 25),
                  child: Divider(color: Color(0xFF405F7B), thickness: 3.sp)),

              // Infomation
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsetsResponsive.only(left: 20, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Thông Tin Tài Khoản",
                        style: TextStyle(
                          color: Color(0xFF1F95D7),
                          fontSize: 60.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Tiền mặt và tiền NH",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Tiền có thể ứng trước",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Sức mua tối ưu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "SL mua tối đa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Tỷ lệ ký quỹ thực tế",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Tỷ lệ an toàn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
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
                    EdgeInsetsResponsive.only(left: 20, top: 25, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Thông Tin Tài Khoản",
                        style: TextStyle(
                          color: Color(0xFF1F95D7),
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "CK chở về",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "CK phong tỏa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "CK cầm cố",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
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
