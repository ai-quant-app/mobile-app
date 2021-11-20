import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class UtilitiesScreen extends StatefulWidget {
  @override
  _UtilitiesScreenState createState() => _UtilitiesScreenState();
}

class _UtilitiesScreenState extends State<UtilitiesScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 0, vsync: this);
  }

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
      child:  Drawer(
        child: new ListView(
          children: [
            // Header
            Container(
              height: 250.sp,
              child: new DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/logo_transparent.png',
                        fit: BoxFit.contain,
                        height: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Body
            Container(
              color: Color(0xFF062D52),
              child: Column(
                children: [
                  new ListTile(
                    title: new Text(
                      'Máy tính',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp),
                    ),
                    leading: new Icon(Icons.calculate,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text(
                      'Web',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp),
                    ),
                    leading: new Icon(Icons.web,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text(
                      'Messenger',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp),
                    ),
                    leading: new Icon(Icons.message,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text(
                      'Youtube',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp),
                    ),
                    leading: new Icon(Icons.youtube_searched_for,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text(
                      'Chat',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp),
                    ),
                    leading: new Icon(Icons.chat,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
