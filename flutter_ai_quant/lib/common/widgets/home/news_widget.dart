import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/dialog/dialog_widget.dart';

class NewsWidget extends StatelessWidget {
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
      child: Column(
        children: <Widget>[
          // Container(
          //   margin: EdgeInsetsResponsive.only(bottom: 25),
          //   height: 550.sp,
          //   width: MediaQuery.of(context).size.width,
          //   child: Carousel(
          //     boxFit: BoxFit.fitWidth,
          //     autoplay: true,
          //     showIndicator: true,
          //     animationCurve: Curves.easeIn,
          //     dotIncreasedColor: Color(0xFF074986),
          //     dotBgColor: Colors.transparent,
          //     dotPosition: DotPosition.bottomCenter,
          //     indicatorBgPadding: 0,
          //     dotVerticalPadding: 0,
          //     images: [
          //       // NetworkImage(
          //       //     'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          //       // NetworkImage(
          //       //     'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          //       // NetworkImage(
          //       //     'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          //     ],
          //   ),
          // ),

          // News
          Container(
            margin: EdgeInsetsResponsive.only(left: 20, right: 20, bottom: 25),
            alignment: Alignment.topLeft,
            child: Text(
              "Tin Tức",
              style: TextStyle(
                color: Color(0xFF26B1FB),
                fontSize: 65.sp,
              ),
            ),
          ),

          // Button
          Container(
            margin: EdgeInsetsResponsive.only(left: 20, right: 20, bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100.sp,
                    width: 300.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.sp),
                    ),
                    child: Center(
                      child: Text(
                        "Nhận định",
                        style: TextStyle(
                            fontSize: 45.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100.sp,
                    width: 300.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.sp),
                    ),
                    child: Center(
                      child: Text(
                        "Tài chính",
                        style: TextStyle(
                            fontSize: 45.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100.sp,
                    width: 300.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.sp),
                    ),
                    child: Center(
                      child: Text(
                        "Doanh nghiệp",
                        style: TextStyle(
                            fontSize: 45.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Rows
          Container(
            margin: EdgeInsetsResponsive.only(left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Image
                Container(
                  child: Image.asset(
                    "assets/images/stock_news.png",
                    height: 180.sp,
                    width: 250.sp,
                    fit: BoxFit.cover,
                  ),
                ),

                // Text News
                Flexible(
                  child: Container(
                    margin: EdgeInsetsResponsive.only(left: 35),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Asian shares lower, US futures up after S&P 500 sinks 3.5%",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 43.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_drop_up,
                                  size: 75.sp, color: Colors.green),
                              Text(
                                "GE: 7.42(+4.51%)",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 35.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "0Michelle Chapman - Associated Press -  Oct 28, 9:12AM CDT",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 27.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
    );
  }
}
