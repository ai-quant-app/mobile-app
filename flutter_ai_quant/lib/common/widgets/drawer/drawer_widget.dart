import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: [
          Container(
            height: 100.0,
            child: new DrawerHeader(
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 220,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/gai1.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 11,
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
          Container(
            color: Color(0xFF062D52),
            child: Column(
              children: [
                new ListTile(
                  title: new Text(
                    'Thông báo',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: new Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('Tín hiệu thị trường',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.shopping_cart, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('Phân tích cơ bản',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.details, color: Colors.white),
                  trailing:
                      new Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('So sánh N cổ phiếu',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.more, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('Phân tích kỹ thuật',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.speaker, color: Colors.white),
                  trailing:
                      new Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('SMARTSCREENER',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.smartphone, color: Colors.white),
                  trailing:
                      new Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('MUA BÁO CÁO',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.report, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('PHÁT SINH',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.aspect_ratio, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title:
                      new Text('VĨ MÔ', style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.beenhere, color: Colors.white),
                ),
                Divider(
                  color: Color(0xFF074782),
                  thickness: 0.5,
                ),
                new ListTile(
                  title: new Text('DANH MỤC',
                      style: TextStyle(color: Colors.white)),
                  leading: new Icon(Icons.list, color: Colors.white),
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
    );

    ;
  }
}