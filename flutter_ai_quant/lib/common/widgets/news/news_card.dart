import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


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
