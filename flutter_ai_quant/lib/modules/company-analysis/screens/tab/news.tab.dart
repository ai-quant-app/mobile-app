import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/common/widgets/news/carousel_news.widget.dart';
import 'package:flutter_ai_quant/common/widgets/news/news_card.widget.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class NewsTab extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xff062D52),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BasicInfo(),
              CarouselNewsWidget(),
              NewsCardWidget()
            ],
          ),
        )
      )
    );
  }
}