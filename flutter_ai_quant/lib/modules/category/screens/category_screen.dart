import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: true,
    );

    return ResponsiveWidgets.builder(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Category Screen"),
        ),
      ),
    );
  }
}