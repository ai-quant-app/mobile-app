import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class BarLineChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  BarLineChart({Key key}) : super(key: key);

  @override
  BarLineChartState createState() => BarLineChartState();
}

class BarLineChartState extends State<BarLineChart> {
  List<_ChartData> data;
  TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('2006', 50),
      _ChartData('2007', 5),
      _ChartData('2008', 5),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      height: size.width * 0.45,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
        tooltipBehavior: _tooltip,
        series: <ChartSeries<_ChartData, String>>[
          ColumnSeries<_ChartData, String>(
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              name: 'Gold',
              color: Color.fromRGBO(8, 142, 255, 1))
        ]));
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}