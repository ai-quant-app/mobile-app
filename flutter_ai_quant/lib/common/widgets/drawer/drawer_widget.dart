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
                    title: new Text(
                      'TÍN HIỆU THỊ TRƯỜNG',
                      style: TextStyle(color: Colors.white, fontSize: 35.sp)
                    ),
                    leading: new Icon(
                      Icons.shopping_cart,
                      size: 70.sp, color: Colors.white
                    ),
                    onTap: () => Navigator.pushNamed(context, "market-signal.screen"),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ExpansionTile(
                    title: new Text('PHÂN TÍCH CƠ BẢN',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.bar_chart,
                        size: 70.sp, color: Colors.white),
                    trailing: new Icon(Icons.keyboard_arrow_down,
                        size: 70.sp, color: Colors.white),
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsetsResponsive.only(left: 180, bottom: 30),
                          child: Text(
                            "Công ty",
                            style: TextStyle(
                              color: Color(0xFFBBC5D0),
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        onTap: () => Navigator.pushNamed(context, "company_list.screen"),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Ngân hàng",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Bảo hiểm",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Chứng khoán",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Quỹ",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Danh sách mã",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ListTile(
                    title: new Text('SO SÁNH N CỔ PHIẾU',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.sticky_note_2,
                        size: 70.sp, color: Colors.white),
                    onTap: () =>
                        Navigator.pushNamed(context, "prepare_n_stock_screen"),
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ExpansionTile(
                    title: new Text('PHÂN TÍCH KỸ THUẬT',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(
                      Icons.analytics_rounded,
                      size: 70.sp,
                      color: Colors.white,
                    ),
                    trailing: new Icon(Icons.keyboard_arrow_down,
                        size: 70.sp, color: Colors.white),
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Market Scan",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Lọc theo trend",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Nhận dạng mẫu hình",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xFF074782),
                    thickness: 0.5,
                  ),
                  new ExpansionTile(
                    title: new Text('SMARTSCREENER',
                        style: TextStyle(color: Colors.white, fontSize: 35.sp)),
                    leading: new Icon(Icons.smartphone, color: Colors.white),
                    trailing: new Icon(Icons.keyboard_arrow_down,
                        size: 70.sp, color: Colors.white),
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Market Screener",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Market Strategies",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Chiến lược theo đà pt kỹ thuật",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Chiến lược già trị",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsetsResponsive.only(left: 180, bottom: 30),
                        child: Text(
                          "Watchlist Dashboard",
                          style: TextStyle(
                            color: Color(0xFFBBC5D0),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
                    onTap: () =>
                        Navigator.pushNamed(context, "utilities"),
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
