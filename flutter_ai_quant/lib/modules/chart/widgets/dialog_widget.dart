import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/chart/widgets/custom_textfield_widget.dart';

class DialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xFF355574),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.2,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsetsResponsive.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 40),
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
                      margin: EdgeInsetsResponsive.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      margin: EdgeInsetsResponsive.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      margin: EdgeInsetsResponsive.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      margin: EdgeInsetsResponsive.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      margin: EdgeInsetsResponsive.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsetsResponsive.only(right: 100),
                            child: Text(
                              "Mã PIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 43.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 120.sp,
                              child: CustomTextFieldWidget(obscure: true),
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
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsetsResponsive.only(
                                right: 15, bottom: 20),
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 70.sp,
                              color: Color(0xFF0DCA70),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Lưu pin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 43.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsetsResponsive.only(right: 10),
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 70.sp,
                              color: Color(0xFF0DCA70),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Thực hiện không cần xác nhận",
                              style: TextStyle(
                                color: Colors.white,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 120.sp,
                        child: OutlinedButton(
                          child: Text("Bán", style: TextStyle(fontSize: 45.sp)),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Color(0xFFD5D5D5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.sp)),
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
                              style: TextStyle(fontSize: 45.sp)),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Color(0xFF26B1FA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
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
  }
}
