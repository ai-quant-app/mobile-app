import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'UI/carousel_news.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("hello");
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
      child: Container(
        height: 1000.sp,
        child: CarouselNews(),
      ),
    );
  }
}
