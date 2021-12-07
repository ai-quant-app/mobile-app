import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CompanyListScreen extends StatefulWidget {
  CompanyListScreen({Key key}) : super(key: key);

  @override
  _CompanyListScreenState createState() => _CompanyListScreenState();
}

class _CompanyListScreenState extends State<CompanyListScreen> {
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
        appBar: AppBar(
          backgroundColor: Color(0xff062D52),
          title: Container(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            )
          ),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.filter_alt_outlined)
            ),
          ],
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(30.sp),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text(
                        "Ngành"
                      )
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 4,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index){
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "LCG - CTCP Licogi 16",
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Icons.star_border_outlined),
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 0.5,
                              ),
                            ],
                          );
                        }
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}