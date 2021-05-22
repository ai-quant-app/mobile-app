import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final double iconSize;
  final Function changeIndex;

  BottomNavigationBarWidget({
    this.selectedIndex,
    this.iconSize,
    this.changeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF074784),
        iconSize: iconSize,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          bottomNavigationBarItem(Icons.ondemand_video, "Danh Mục"),
          bottomNavigationBarItem(Icons.insert_chart, "Bảng Giá"),
          bottomNavigationBarItem(Icons.home, "Trang Chủ"),
          bottomNavigationBarItem(Icons.multiline_chart, "Biểu Đồ"),
          bottomNavigationBarItem(Icons.account_box, "Đặt Lệnh"),
        ],
        currentIndex: selectedIndex,
        onTap: changeIndex,
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem(IconData icon, String title) {
  return BottomNavigationBarItem(
    icon: Center(child: Icon(icon)),
    label: title,
  );
}
