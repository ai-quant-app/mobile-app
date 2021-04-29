import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/set_command/widgets/login_textfield_widget.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class SetCommandScreen extends StatefulWidget {
  @override
  _SetCommandScreenState createState() => _SetCommandScreenState();
}

class _SetCommandScreenState extends State<SetCommandScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          backgroundColor: Color(0xFF074884),
          title: Text(
            "ĐĂNG NHẬP",
            style: TextStyle(fontSize: 50.sp, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Group Login TextField
              Container(
                margin: EdgeInsetsResponsive.only(
                    top: 35, left: 70, right: 70, bottom: 70),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: LoginTextFieldWidget(
                        prefixIcon: Icons.account_box,
                        hintText: "Tài Khoản",
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: LoginTextFieldWidget(
                        obscure: true,
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.visibility_off_outlined,
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180.sp,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.sp),
                            ),
                            child: Center(
                              child: Text(
                                "85vfh",
                                style: TextStyle(
                                  color: Color(0xFF062D52),
                                  fontSize: 55.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBoxResponsive(width: 50),
                          Container(
                            height: 180.sp,
                            width: 180.sp,
                            decoration: BoxDecoration(
                              color: Color(0xFF1F4364),
                              borderRadius: BorderRadius.circular(25.sp),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.sync,
                                size: 70.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: LoginTextFieldWidget(
                        prefixIcon: Icons.code,
                        hintText: "Pass code",
                      ),
                    )
                  ],
                ),
              ),

              // Group Login
              Container(
                margin:
                    EdgeInsetsResponsive.only(left: 70, right: 70, bottom: 35),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Text(
                        "Đăng nhập bằng",
                        style: TextStyle(
                          color: Color(0xFFAEB9CA),
                          fontSize: 55.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              "assets/images/face_id.png",
                              color: Colors.white,
                              height: 200.sp,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Hoặc",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 55.sp,
                              ),
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/finger_print.png",
                              // color: Colors.white,
                              height: 200.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 150.sp,
                        width: double.infinity,
                        margin: EdgeInsetsResponsive.only(bottom: 35),
                        decoration: BoxDecoration(
                          color: Color(0xFF26B1Fa),
                          borderRadius: BorderRadius.circular(35.sp),
                        ),
                        child: Center(
                          child: Text(
                            "ĐĂNG NHẬP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsetsResponsive.only(bottom: 25),
                      child: Text(
                        "Lưu ý: Đối với khách hàng nước ngoài, vui lòng nhập đầy đủ tradinh code '022FISxxxx' hoặc '022FIAxxx' ",
                        style: TextStyle(
                          color: Color(0xFFAEB9CA),
                          fontSize: 45.sp,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Quên mật khẩu",
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: Color(0xFF26B1Fa),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Forgot Trading Code",
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: Color(0xFF26B1Fa),
                            ),
                          ),
                        ),
                      ],
                    )
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
