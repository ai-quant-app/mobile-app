import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'UI/CarouselNews.dart';

class News extends StatelessWidget {
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
      allowFontScaling: true,
      child: Container(
        child: News(),
      ),
    );
  }
}
