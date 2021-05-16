import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/chart/widgets/dialog_widget.dart';
import 'package:flutter_ai_quant/modules/category/widgets/data_table_button_widget.dart';

class BasketTradeTwoScreen extends StatefulWidget {
  @override
  _BasketTradeTwoScreenState createState() => _BasketTradeTwoScreenState();
}

class _BasketTradeTwoScreenState extends State<BasketTradeTwoScreen> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
        height: 1920, width: 1080, allowFontScaling: false);

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF074784),
          title: Text(
            "Lệnh Sinh Ra",
            style: TextStyle(fontSize: 65.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            Container(
              margin: EdgeInsetsResponsive.only(right: 35),
              child: Icon(
                Icons.screen_rotation_outlined,
                color: Colors.white,
                size: 70.sp,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Group Text
              Container(
                margin: EdgeInsetsResponsive.only(left: 10, right: 10, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chẻ lệnh: Ngẫu nhiên",
                      style: TextStyle(
                        color: Color(0xFF26B1FA),
                        fontSize: 39.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Số lệnh: 10",
                      style: TextStyle(
                        color: Color(0xFF26B1FA),
                        fontSize: 39.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Lệnh mua: 8",
                      style: TextStyle(
                        color: Color(0xFF26B1FA),
                        fontSize: 39.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Lệnh bán: 2",
                      style: TextStyle(
                        color: Color(0xFF26B1FA),
                        fontSize: 39.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              // Group Button
              Container(
                margin: EdgeInsetsResponsive.only(
                    left: 20, right: 20, top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => DialogWidget()),
                      child: Container(
                        height: 100.sp,
                        width: 300.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(40.sp),
                        ),
                        child: Center(
                          child: Text(
                            "Tất Cả",
                            style:
                                TextStyle(fontSize: 45.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => DialogWidget()),
                      child: Container(
                        height: 100.sp,
                        width: 300.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(40.sp),
                        ),
                        child: Center(
                          child: Text(
                            "Lệnh mua",
                            style:
                                TextStyle(fontSize: 45.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => DialogWidget()),
                      child: Container(
                        height: 100.sp,
                        width: 300.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(40.sp),
                        ),
                        child: Center(
                          child: Text(
                            "Lệnh bán",
                            style:
                                TextStyle(fontSize: 45.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Group Data Table
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        dividerColor: Color(0xFF4C6C8A),
                        dataTableTheme: DataTableThemeData(
                          headingTextStyle: TextStyle(
                            fontSize: 55.sp,
                            color: Colors.white,
                          ),
                          dataTextStyle: TextStyle(
                            fontSize: 50.sp,
                            color: Colors.white,
                          ),
                        )),
                    child: IntrinsicWidth(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 150.sp,
                            color: Color(0xFF074884),
                          ),
                          DataTable(
                            headingRowHeight: 150.sp,
                            columns: [
                              DataColumn(
                                  label: Text("Mã CK",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Thực hiện",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Hủy lệnh",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Giờ mở",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Lệnh",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Ngày hiệu lực",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Số lượng",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Giá mua",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Ngày kết thúc",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Cận trên ",
                                      textAlign: TextAlign.center)),
                              DataColumn(
                                  label: Text("Cận dưới",
                                      textAlign: TextAlign.center)),
                            ],
                            rows: [
                              for (var i = 0; i < 50; i++)
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Center(
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 4.sp,
                                                child: Checkbox(
                                                    value: checkedValue,
                                                    checkColor: Colors.black,
                                                    onChanged: (value) {
                                                      setState(() =>
                                                          checkedValue =
                                                              !checkedValue);
                                                    }),
                                              ),
                                              SizedBoxResponsive(width: 25),
                                              Text(
                                                "ACB",
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Center(
                                        child: DataTableButtonWidget(
                                          title: "Thực Hiện",
                                          backgroundColor: Color(0xFF26B1FA),
                                          callbackAction: () {},
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Center(
                                        child: DataTableButtonWidget(
                                          title: "Hủy",
                                          backgroundColor: Colors.white,
                                          callbackAction: () {},
                                        ),
                                      ),
                                    ),
                                    DataCell(Center(child: Text("10:15"))),
                                    DataCell(Center(child: Text("Mua"))),
                                    DataCell(Center(child: Text("20/11/2020"))),
                                    DataCell(Center(child: Text("1000"))),
                                    DataCell(Center(child: Text("87"))),
                                    DataCell(Center(child: Text("20/11/2020"))),
                                    DataCell(Center(child: Text("100"))),
                                    DataCell(Center(child: Text("84"))),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
