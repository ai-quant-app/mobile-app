import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/ai_quant/home_module/prepare_n_stock_sub_screen/detail/screen/prepare_n_stock_detail_sub_screen.dart';
import 'package:flutter_ai_quant/ai_quant/home_module/prepare_n_stock_sub_screen/overview/prepare_n_stock_overview_sub_screen.dart';
import 'package:flutter_ai_quant/ai_quant/home_module/prepare_n_stock_sub_screen/view%20_chart/prepare_n_stock_view_chart_sub_screen.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/button/enter_symbol_button_widget.dart';

class PrepareNStockScreen extends StatefulWidget {
  @override
  _PrepareNStockScreenState createState() => _PrepareNStockScreenState();
}

class _PrepareNStockScreenState extends State<PrepareNStockScreen> {
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
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xFF062D52),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFF074784),
            title: Text(
              "So Sánh Cổ Phiếu",
              style: TextStyle(fontSize: 65.sp, color: Colors.white),
            ),
            iconTheme: IconThemeData(color: Colors.white),
            actions: [
              Container(
                margin: EdgeInsetsResponsive.only(right: 35),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 70.sp,
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                // Enter Symbols
                Container(
                  margin: EdgeInsetsResponsive.only(bottom: 25),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsetsResponsive.only(
                            left: 25, bottom: 25, top: 50),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "ENTER SYMBOLS",
                          style: TextStyle(
                            color: Color(0xFF9BABBA),
                            fontSize: 45.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150.sp,
                            margin: EdgeInsetsResponsive.only(left: 25),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsetsResponsive.all(0),
                                itemCount: 10,
                                itemBuilder: (index, context) {
                                  return EnterSymbolButtonWidget(
                                    title: "FB",
                                    onTap: () {},
                                  );
                                }),
                          ),
                          Container(
                            height: 150.sp,
                            width: 250.sp,
                            margin: EdgeInsetsResponsive.only(right: 25),
                            decoration: BoxDecoration(
                                color: Color(0xFF405F7B),
                                borderRadius: BorderRadius.circular(25.sp)),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 70.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Line
                Container(
                  margin: EdgeInsetsResponsive.only(bottom: 25),
                  child: Divider(
                    color: Color(0xFF9BABBA),
                    thickness: 5.sp,
                  ),
                ),

                // Tab Bar Button
                TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(45.sp),
                      // Creates border
                      color: Color(0xFF26B1FB)),
                  tabs: [
                    Tab(
                      child: Text(
                        "Tổng Quan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Chi Tiết",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Biểu Đồ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),

                // Tab Bar View
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      PrepareNStockOverviewSubScreen(),
                      PrepareNStockDetailSubScreen(),
                      PrepareNStockViewChartSubScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
