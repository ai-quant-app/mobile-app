import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/chart/widgets/dialog_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/modules/home/widgets/UI/line_chart_v2.dart';
import 'package:flutter_ai_quant/modules/category/widgets/data_table_button_widget.dart';

class BasketTradeTwoScreen extends StatefulWidget {
  @override
  _BasketTradeTwoScreenState createState() => _BasketTradeTwoScreenState();
}

class _BasketTradeTwoScreenState extends State<BasketTradeTwoScreen> {
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
            "Giỏ lệnh",
            style: TextStyle(fontSize: 65.sp, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Group Text
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chẻ lệnh: ngẫu nhiên",
                        style: TextStyle(color: Colors.white)),
                    Text("Số lệnh: 10", style: TextStyle(color: Colors.white)),
                    Text("Lệnh mua: 8", style: TextStyle(color: Colors.white)),
                    Text("Lệnh bán: 2", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              // Group Button
              FittedBox(
                child: Container(
                  margin: EdgeInsetsResponsive.only(
                      left: 20, right: 20, top: 25, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                            child:
                                Text("Mua", style: TextStyle(fontSize: 45.sp)),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Color(0xFF0DCA70),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.sp)),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => DialogWidget(),
                              );
                            }),
                      ),
                      SizedBoxResponsive(width: 20),
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                          child: Text("Bán", style: TextStyle(fontSize: 45.sp)),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Color(0xFFED6060),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.sp)),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => DialogWidget(),
                            );
                          },
                        ),
                      ),
                      SizedBoxResponsive(width: 20),
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                            child: Text("Làm Lại",
                                style: TextStyle(fontSize: 45.sp)),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.sp)),
                            ),
                            onPressed: () {}),
                      ),
                      SizedBoxResponsive(width: 20),
                      Container(
                        height: 120.sp,
                        width: 250.sp,
                        child: OutlinedButton(
                          child: Text("Giỏ Lệnh",
                              style: TextStyle(fontSize: 45.sp)),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xFF26B1FB),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.sp)),
                          ),
                          onPressed: () => Navigator.pushNamed(
                              context, "basket_trade_screen"),
                        ),
                      ),
                    ],
                  ),
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
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text("Mã", textAlign: TextAlign.center)),
                        DataColumn(
                            label:
                                Text("Đặt lệnh", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("SL TP", textAlign: TextAlign.center)),
                        DataColumn(
                            label:
                                Text("Số lượng", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("Giá", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("+/-", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("Xu thế", textAlign: TextAlign.center)),
                        DataColumn(
                            label:
                                Text("Xếp hạng", textAlign: TextAlign.center)),
                        DataColumn(
                            label: Text("Đồ thị", textAlign: TextAlign.center)),
                      ],
                      rows: [
                        for (var i = 0; i < 10; i++)
                          DataRow(cells: [
                            DataCell(
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Text("LCG"),
                                    Icon(
                                      Icons.star,
                                      size: 70.sp,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    DataTableButtonWidget(
                                      title: "Mua",
                                      backgroundColor: Color(0xFF1EE654),
                                      callbackAction: () {},
                                    ),
                                    SizedBoxResponsive(width: 20.sp),
                                    DataTableButtonWidget(
                                      title: "Bán",
                                      backgroundColor: Color(0xFFED6060),
                                      callbackAction: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DataCell(Center(child: Text(""))),
                            DataCell(Center(child: Text("200"))),
                            DataCell(Center(child: Text("10.15"))),
                            DataCell(Center(child: Text("+8%"))),
                            DataCell(Center(child: Text("Tăng"))),
                            DataCell(Center(child: Text("123"))),
                            DataCell(
                              Center(
                                child: ContainerResponsive(
                                  width: 250,
                                  height: 120,
                                  child: SimpleLineChartV2(
                                      SimpleLineChartV2.withSampleData()
                                          .seriesList),
                                ),
                              ),
                            )
                          ]),
                      ],
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
