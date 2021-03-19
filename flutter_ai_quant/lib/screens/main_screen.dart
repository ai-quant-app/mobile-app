import 'package:device_preview/device_preview.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/fab_bottom_app_bar_widget.dart';
import '../modules/home_screens/screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context), // Add the locale here
        builder: DevicePreview.appBuilder,
        theme: new ThemeData(
            primaryColor: Color(0xFFF0F2FC),
            backgroundColor: Color(0xFF062D52),
        ),
        home: MainScreen(
          icon: new Icon(Icons.access_alarm),
        ));
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.icon}) : super(key: key);

  final Icon icon;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  int _lastSelected = 0;

  void selectedTAB(int index) {
    setState(() => _lastSelected = index);
  }

  Widget renderScreen() {
    switch(_lastSelected) {
      case 0: {
        return Text("$_lastSelected, Danh mục");
      }
      case 1: {
        return Text("$_lastSelected, Bảng giá");
      }
      case 2:{
        return Text("$_lastSelected, Biểu đồ");
      }
      case 3:{
        return Text("$_lastSelected, Đặt lệnh");
      }
      default: {
        return HomeScreen();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
      height: 1920,
      width: 1080,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        appBar: AppBar(
          title: new Image.asset(
            'assets/logo_transparent.png',
            fit: BoxFit.contain,
            height: 70.sp,
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFeff1fd),
          iconTheme: new IconThemeData(color: Color(0xFF074986)),
          actions: [
            new Icon(
              Icons.search,
              size: 32,
            )
          ],
        ),
        drawer: _buildDrawer(context),
        body: renderScreen(),
        bottomNavigationBar: FABBottomAppBar(
          color: Color(0xFF6c9dcd),
          selectedColor: Colors.white,
          notchedShape: CircularNotchedRectangle(),
          backgroundColor: Color(0xFF074784),
          onTabSelected: selectedTAB,
          items: [
            FABBottomAppBarItem(iconData: Icons.menu, text: 'Danh mục'),
            FABBottomAppBarItem(iconData: Icons.layers, text: 'Bảng giá'),
            FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Biểu đồ'),
            FABBottomAppBarItem(iconData: Icons.info, text: 'Đặt lệnh'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFab(context, selectedTAB), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget _buildFab(BuildContext context, Function selectedTAB) {
    return FloatingActionButton(
      onPressed: () { selectedTAB(4); },
      tooltip: 'main_screen',
      child: Icon(Icons.home),
      elevation: 2.0,
      backgroundColor: Color(0xFF26b6fe),
    );
  }
}

Widget _buildDrawer(BuildContext context) {
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
                  backgroundImage: AssetImage('assets/gai1.jpg'),
                ),
              ),
              Positioned(
                top: 11,
                child: Image.asset(
                  'assets/logo_transparent.png',
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
              title:
                  new Text('PHÁT SINH', style: TextStyle(color: Colors.white)),
              leading: new Icon(Icons.aspect_ratio, color: Colors.white),
            ),
            Divider(
              color: Color(0xFF074782),
              thickness: 0.5,
            ),
            new ListTile(
              title: new Text('VĨ MÔ', style: TextStyle(color: Colors.white)),
              leading: new Icon(Icons.beenhere, color: Colors.white),
            ),
            Divider(
              color: Color(0xFF074782),
              thickness: 0.5,
            ),
            new ListTile(
              title:
                  new Text('DANH MỤC', style: TextStyle(color: Colors.white)),
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
  ));
}
