import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class DrawerWidget extends StatelessWidget {
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
      child: Drawer(
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
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/gai1.jpg'),
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
                      'THÔNG BÁO',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp),
                    ),
                    leading: new Icon(Icons.notifications,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('TÍN HIỆU THỊ TRƯỜNG',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.shopping_cart,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('PHÂN TÍCH CƠ BẢN',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon( Icons.bar_chart,
                        size: 70.sp, color: Colors.white),
                    trailing: new Icon(Icons.keyboard_arrow_down,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('SO SÁNH N CỔ PHIẾU',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading:
                        new Icon(Icons.sticky_note_2, size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('PHÂN TÍCH KỸ THUẬT',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(
                      Icons.analytics_rounded,
                      size: 70.sp,
                      color: Colors.white,
                    ),
                    trailing: new Icon(Icons.keyboard_arrow_down,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('SMARTSCREENER',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.smartphone, color: Colors.white),
                    trailing: new Icon(Icons.keyboard_arrow_down,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('MUA BÁO CÁO',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.multiline_chart,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('PHÁT SINH',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.warning_outlined,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('VĨ MÔ',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.category,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('DANH MỤC',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading:
                        new Icon(Icons.list, size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('TIN TỨC',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.ondemand_video,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('TIỆN ÍCH',
                        style: TextStyle(color: Colors.white)),
                    leading:
                        new Icon(Icons.assistant_rounded, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('THIẾT lẬP',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.settings,
                        size: 70.sp, color: Colors.white),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('ĐĂNG XUẤT',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.logout,
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

    ;
  }
}
