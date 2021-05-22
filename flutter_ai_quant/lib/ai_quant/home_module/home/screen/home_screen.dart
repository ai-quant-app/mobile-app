import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/drawer/drawer_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/categories_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/high_light_stocks_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/recommended_stocks_widget.dart';
import 'package:flutter_ai_quant/common/widgets/dialog/dialog_widget.dart';

class HomeScreen extends StatelessWidget {
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
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Image.asset(
            'assets/logo_transparent.png',
            height: 180.sp,
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFeff1fd),
          iconTheme: IconThemeData(color: Color(0xFF074986)),
          actions: [
            Icon(
              Icons.search,
              size: 80.sp,
            )
          ],
        ),
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //
              HighLightStocksWidget(),

              //
              CategoriesWidget(),

              //
              RecommendedStocks(),
              // News(),

              // News
              Container(
                margin:
                    EdgeInsetsResponsive.only(left: 20, right: 20, bottom: 25),
                alignment: Alignment.topLeft,
                child: Text(
                  "Tin Tức",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.sp,
                  ),
                ),
              ),

              // Button
              Container(
                margin:
                    EdgeInsetsResponsive.only(left: 20, right: 20, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => DialogWidget()),
                      child: Container(
                        height: 100.sp,
                        width: 300.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(40.sp),
                        ),
                        child: Center(
                          child: Text(
                            "Nhận định",
                            style:
                                TextStyle(fontSize: 45.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => DialogWidget()),
                      child: Container(
                        height: 100.sp,
                        width: 300.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(40.sp),
                        ),
                        child: Center(
                          child: Text(
                            "Tài chính",
                            style:
                                TextStyle(fontSize: 45.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => DialogWidget()),
                      child: Container(
                        height: 100.sp,
                        width: 300.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(40.sp),
                        ),
                        child: Center(
                          child: Text(
                            "Doanh nghiệp",
                            style:
                                TextStyle(fontSize: 45.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Rows
              FittedBox(
                child: Container(
                  margin: EdgeInsetsResponsive.only(bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Image
                      Container(
                        child: Image.asset(
                          "assets/images/stock_news.png",
                          height: 150.sp,
                          fit: BoxFit.contain,
                        ),
                      ),

                      // Text News
                      Container(
                        margin: EdgeInsetsResponsive.only(left: 25),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
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
              Container(
                child: Divider(
                  color: Colors.grey,
                  thickness: 2.sp,
                ),
              ),

              //
              FittedBox(
                child: Container(
                  margin: EdgeInsetsResponsive.only(bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Image
                      Container(
                        child: Image.asset(
                          "assets/images/stock_news.png",
                          height: 150.sp,
                          fit: BoxFit.contain,
                        ),
                      ),

                      // Text News
                      Container(
                        margin: EdgeInsetsResponsive.only(left: 25),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
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
              Container(
                child: Divider(
                  color: Colors.grey,
                  thickness: 2.sp,
                ),
              ),

              //
              FittedBox(
                child: Container(
                  margin: EdgeInsetsResponsive.only(bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Image
                      Container(
                        child: Image.asset(
                          "assets/images/stock_news.png",
                          height: 150.sp,
                          fit: BoxFit.contain,
                        ),
                      ),

                      // Text News
                      Container(
                        margin: EdgeInsetsResponsive.only(left: 25),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
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
              Container(
                child: Divider(
                  color: Colors.grey,
                  thickness: 2.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
