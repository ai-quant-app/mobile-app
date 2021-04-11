import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/smooth-line.chart.dart';
import 'package:flutter_ai_quant/modules/market-signal/widgets/one-line-two-stacked-bar.chart.dart';
import 'package:flutter_ai_quant/modules/market-signal/widgets/treemap.chart.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class MarketSignalScreen extends StatefulWidget {
  @override
  _MarketSignalScreenState createState() => _MarketSignalScreenState();
}

class _MarketSignalScreenState extends State<MarketSignalScreen> {
  String dropdownValue = 'TECHNOLOGY';

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
        height: AppDimension.screenHeight,
        width: AppDimension.screenWidth,
        allowFontScaling: false,
        child: Scaffold(
          backgroundColor: Color(0xff062D52),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(150.sp),
            child: AppBar(
              backgroundColor: Color(0xff074884),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                'Market Signal',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.white, width: 5.sp),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            // backgroundColor: Colors.teal,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Xu thế',
                          )),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Colors.white,
                              width: 5.sp,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            // backgroundColor: Colors.teal,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Tỷ lệ tăng giảm',
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.sp,
                ),
                Text(
                  'CHỈ SỐ TÂM LÝ CUNG CẦU',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9BABB9)),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('6170',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('Advancing'),
                          Expanded(child: Container()),
                          Text('Declining'),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('1271',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      OneLineTwoStackedBarChart(
                        firstStackValue: 81.2,
                        secondStackValue: 18.8,
                      ),
                      SizedBox(
                        height: 80.sp,
                      ),
                      Row(
                        children: [
                          Text('6170',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('Advancing'),
                          Expanded(child: Container()),
                          Text('Declining'),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('1271',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      OneLineTwoStackedBarChart(
                        firstStackValue: 81.2,
                        secondStackValue: 18.8,
                      ),
                      SizedBox(
                        height: 80.sp,
                      ),
                      Row(
                        children: [
                          Text('6170',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('Advancing'),
                          Expanded(child: Container()),
                          Text('Declining'),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('1271',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      OneLineTwoStackedBarChart(
                        firstStackValue: 81.2,
                        secondStackValue: 18.8,
                      ),
                      SizedBox(
                        height: 80.sp,
                      ),
                      Row(
                        children: [
                          Text('6170',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('Advancing'),
                          Expanded(child: Container()),
                          Text('Declining'),
                          SizedBox(
                            width: 30.sp,
                          ),
                          Text('1271',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 43.sp,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      OneLineTwoStackedBarChart(
                        firstStackValue: 52,
                        secondStackValue: 48,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xffDEDEDE),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  '20 MÃ TĂNG GIẢM NHIỀU NHẤT',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9BABB9)),
                ),
                SizedBox(
                  height: 40.sp,
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.sp),
                        color: Color(0xff264869),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: DropdownButton(
                            value: dropdownValue,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            iconSize: 100.sp,
                            elevation: 16,
                            style: const TextStyle(color: Colors.white),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'TECHNOLOGY',
                              'COMMUNICATION SER',
                              'CONSUMER CYCLIC',
                              'CONSUMER DE',
                              'FINANCIAL',
                              'HEALTHCARE',
                              'INDUSTRIALS',
                              'REAL ESTATE',
                              'ENERGY'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: dropdownValue == value
                                    ? Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        color: dropdownValue == value
                                            ? Color(0xff264869)
                                            : Colors.transparent,
                                        child: Row(
                                          children: [
                                            Text(value),
                                          ],
                                        ))
                                    : Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(value)),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 40.sp,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.white, width: 5.sp),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            // backgroundColor: Colors.teal,
                          ),
                          onPressed: () {},
                          child: Text('Bđ nhiệt thị trường',
                              style: TextStyle(fontSize: 30.sp))),
                    ),
                    SizedBox(
                      width: 30.sp,
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                            color: Colors.white,
                            width: 5.sp,
                          ),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          // backgroundColor: Colors.teal,
                        ),
                        onPressed: () {},
                        child: Text('+/-', style: TextStyle(fontSize: 30.sp))),
                    SizedBox(
                      width: 30.sp,
                    ),
                    Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Colors.white,
                              width: 5.sp,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            // backgroundColor: Colors.teal,
                          ),
                          onPressed: () {},
                          child: Text('Mẫu hình kỹ thuật',
                              style: TextStyle(fontSize: 30.sp))),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.sp,
                ),
                SmoothLineChart(),
                SizedBox(
                  height: 20.sp,
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xffDEDEDE),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'TECHNOLOGY',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9BABB9)),
                ),
                SizedBox(
                  height: 40.sp,
                ),
                TreeMapChart()
              ],
            ),
          ),
        ));
  }
}
