import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:k_chart/flutter_k_chart.dart';
import 'package:k_chart/k_chart_widget.dart';
import 'package:http/http.dart' as http;

import 'package:responsive_widgets/responsive_widgets.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  List<KLineEntity> datas;
  bool showLoading = true;
  MainState _mainState = MainState.MA;
  bool _volHidden = false;
  SecondaryState _secondaryState = SecondaryState.MACD;
  bool isLine = true;
  bool isChinese = true;
  List<DepthEntity> _bids, _asks;

  @override
  void initState() {
    super.initState();
    getData('1day');
    rootBundle.loadString('assets/depth.json').then((result) {
      final parseJson = json.decode(result);
      Map tick = parseJson['tick'];
      var bids = tick['bids']
          .map((item) => DepthEntity(item[0], item[1]))
          .toList()
          .cast<DepthEntity>();
      var asks = tick['asks']
          .map((item) => DepthEntity(item[0], item[1]))
          .toList()
          .cast<DepthEntity>();
      initDepth(bids, asks);
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: true,
    );

    return ResponsiveWidgets.builder(
      child: Scaffold(
        backgroundColor: Color(0xFF062D52),
        appBar: AppBar(
          backgroundColor: Color(0xFF062D52),
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.bar_chart,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: [
            Container(
              padding: EdgeInsetsResponsive.all(25),
              child: OutlinedButton(
                child: Text(
                  "GIAO DỊCH",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.lightBlue,
                    width: 3.sp,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.sp))),
                ),
                onPressed: () {},
              ),
            ),
          ],
          bottom: PreferredSize(
            child: Container(
              color: Colors.lightBlue,
              height: 2.sp,
            ),
            preferredSize: Size.fromHeight(2.sp),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FittedBox(
                child: Container(
                  margin: EdgeInsetsResponsive.only(
                      left: 25, right: 25, top: 25, bottom: 50),
                  child: Row(
                    children: <Widget>[
                      OutlinedButton(
                        child: Text("Mua"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFF1ACB45),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                      SizedBoxResponsive(width: 25),
                      OutlinedButton(
                        child: Text("Bán"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFFED6060),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                      SizedBoxResponsive(width: 25),
                      OutlinedButton(
                        child: Text("Lệnh Điều Kiện"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFF26B1FB),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                      SizedBoxResponsive(width: 25),
                      OutlinedButton(
                        child: Text("GD Theo Thuật Toán"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFF26B1FB),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              //
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Stack(children: <Widget>[
                    Container(
                      height: 450,
                      width: double.infinity,
                      child: KChartWidget(
                        datas,
                        isLine: isLine,
                        mainState: _mainState,
                        volHidden: _volHidden,
                        secondaryState: _secondaryState,
                        fixedLength: 2,
                        timeFormat: TimeFormat.YEAR_MONTH_DAY,
                        isChinese: isChinese,
                      ),
                    ),
                    if (showLoading)
                      Container(
                          width: double.infinity,
                          height: 450,
                          alignment: Alignment.center,
                          child: CircularProgressIndicator()),
                  ]),
                  buildButtons(),
                  Container(
                    height: 230,
                    width: double.infinity,
                    child: DepthChart(_bids, _asks),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void initDepth(List<DepthEntity> bids, List<DepthEntity> asks) {
    if (bids == null || asks == null || bids.isEmpty || asks.isEmpty) return;
    _bids = List();
    _asks = List();
    double amount = 0.0;
    bids?.sort((left, right) => left.price.compareTo(right.price));
    //累加买入委托量
    bids.reversed.forEach((item) {
      amount += item.vol;
      item.vol = amount;
      _bids.insert(0, item);
    });

    amount = 0.0;
    asks?.sort((left, right) => left.price.compareTo(right.price));
    //累加卖出委托量
    asks?.forEach((item) {
      amount += item.vol;
      item.vol = amount;
      _asks.add(item);
    });
    setState(() {});
  }

  Widget buildButtons() {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: <Widget>[
        button("分时", onPressed: () => isLine = true),
        button("k线", onPressed: () => isLine = false),
        button("MA", onPressed: () => _mainState = MainState.MA),
        button("BOLL", onPressed: () => _mainState = MainState.BOLL),
        button("隐藏", onPressed: () => _mainState = MainState.NONE),
        button("MACD", onPressed: () => _secondaryState = SecondaryState.MACD),
        button("KDJ", onPressed: () => _secondaryState = SecondaryState.KDJ),
        button("RSI", onPressed: () => _secondaryState = SecondaryState.RSI),
        button("WR", onPressed: () => _secondaryState = SecondaryState.WR),
        button("隐藏副视图", onPressed: () => _secondaryState = SecondaryState.NONE),
        button(_volHidden ? "显示成交量" : "隐藏成交量",
            onPressed: () => _volHidden = !_volHidden),
        button("切换中英文", onPressed: () => isChinese = !isChinese),
      ],
    );
  }

  Widget button(String text, {VoidCallback onPressed}) {
    return FlatButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed();
            setState(() {});
          }
        },
        child: Text("$text"),
        color: Colors.blue);
  }

  void getData(String period) {
    Future<String> future = getIPAddress('$period');
    future.then((result) {
      Map parseJson = json.decode(result);
      List list = parseJson['data'];
      datas = list
          .map((item) => KLineEntity.fromJson(item))
          .toList()
          .reversed
          .toList()
          .cast<KLineEntity>();
      DataUtil.calculate(datas);
      showLoading = false;
      setState(() {});
    }).catchError((_) {
      showLoading = false;
      setState(() {});
      print('获取数据失败');
    });
  }

  //获取火币数据，需要翻墙
  Future<String> getIPAddress(String period) async {
    var url =
        'https://api.huobi.br.com/market/history/kline?period=${period ?? '1day'}&size=300&symbol=btcusdt';
    String result;
    var response = await http.get(url);
    if (response.statusCode == 200) {
      result = response.body;
    } else {
      print('Failed getting IP address');
    }
    return result;
  }
}
