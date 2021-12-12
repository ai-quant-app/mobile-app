import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://m.economictimes.com/thumb/msid-71633105,width-3684,height-2068,resizemode-4,imgsize-550306/stocks-market.jpg',
];


class CarouselNewsWidget extends StatefulWidget {
  @override
  _CarouselNewsWidgetState createState() => _CarouselNewsWidgetState();
}

class _CarouselNewsWidgetState extends State<CarouselNewsWidget> {
  int _current = 0;
  

  

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.network(item, width: 200),
                  Text(
                    "AI QUANT - Top 10 Hack4Growth Cuộc thi đổi mới sáng tạo toàn cầu",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor
                    )
                  )
                ],
              )),
          ))
      .toList();

    return Container(
      child: Column(children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 8.0,
              // height: 20,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
