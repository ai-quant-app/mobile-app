import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/button/data_table_button_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/high_light_stocks_widget.dart';
import 'package:flutter_ai_quant/common/widgets/home/line_chart_v2_widget.dart';
import 'package:flutter_ai_quant/common/widgets/text_field/category_textfield_widget.dart';

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
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          backgroundColor: Color(0xFF074884),
          centerTitle: true,
          title: Text(
            "DANH MỤC",
            style: TextStyle(fontSize: 50.sp, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Chart
              Container(
                child: HighLightStocksWidget(),
              ),
              Container(
                margin: EdgeInsetsResponsive.only(bottom: 35),
                child: Divider(
                  color: Color(0xFF284b6a),
                  thickness: 5.sp,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin:
                    EdgeInsetsResponsive.only(left: 35, right: 35, bottom: 35),
                child: Text(
                  "Đăng nhập bằng",
                  style: TextStyle(
                    color: Color(0xFFAEB9CA),
                    fontSize: 55.sp,
                  ),
                ),
              ),

              // Text Field
              Container(
                margin:
                    EdgeInsetsResponsive.only(left: 35, right: 35, bottom: 35),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsResponsive.only(bottom: 35),
                      child: CategoryTextFieldWidget(
                        hintText: "Nhập mã",
                        suffixIcon: Icons.search,
                      ),
                    ),
                    Container(
                      height: 120.sp,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsetsResponsive.only(right: 35),
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60.sp),
                              ),
                              child: Center(
                                child: Text(
                                  "Đặt Lệnh",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 50.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Table Data
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
                        for (var i = 0; i < 50; i++)
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
