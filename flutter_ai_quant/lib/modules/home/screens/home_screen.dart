import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/chart/widgets/dialog_widget.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/home/widgets/high_light_stocks.dart';
import 'package:flutter_ai_quant/modules/home/widgets/drawer.dart';
import 'package:flutter_ai_quant/modules/home/widgets/categories.dart';
import 'package:flutter_ai_quant/modules/home/widgets/recommended_stocks.dart';
import 'package:flutter_ai_quant/modules/home/widgets/news.dart';

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
        drawer: DrawerComponent(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //
              HighLightStocks(),

              //
              Categories(),

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
