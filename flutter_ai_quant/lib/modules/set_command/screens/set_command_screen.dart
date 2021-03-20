import 'package:flutter/material.dart';

import 'package:responsive_widgets/responsive_widgets.dart';

class SetCommandScreen extends StatefulWidget {
  @override
  _SetCommandScreenState createState() => _SetCommandScreenState();
}

class _SetCommandScreenState extends State<SetCommandScreen> {
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
          title: Text("Set Command Screen"),
        ),
      ),
    );
  }
}