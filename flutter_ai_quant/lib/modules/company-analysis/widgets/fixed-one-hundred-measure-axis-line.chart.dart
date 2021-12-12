/// Dash pattern line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';

/// Example of a line chart rendered with dash patterns.
class FixedOneHundredMeasureAxisLineChart extends StatelessWidget {
  final Map<String, List<ChartData>> data;
  final bool animate;

  FixedOneHundredMeasureAxisLineChart(this.data, {this.animate = false});
  final staticTicks = <charts.TickSpec<num>>[
    charts.TickSpec(0),
    charts.TickSpec(10),
    charts.TickSpec(20),
    charts.TickSpec(30),
    charts.TickSpec(40),
    charts.TickSpec(50),
    charts.TickSpec(60),
    charts.TickSpec(70),
    charts.TickSpec(80),
    charts.TickSpec(90),
    charts.TickSpec(100),
  ];

  
  List<charts.Series<ChartData, int>> _generateData() {
    List<charts.Series<ChartData, int>> ret = [];
    this.data.forEach((key, value) {
      ret.add(
        new charts.Series<ChartData, int>(
          id: key,
          colorFn: (ChartData dt, __) => dt.color,
          domainFn: (ChartData dt, _) => dt.x,
          measureFn: (ChartData dt, _) => dt.y,
          data: value,
        ),
      );
    });
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(
      _generateData(),
      animate: animate,
      primaryMeasureAxis: charts.NumericAxisSpec(
          tickProviderSpec: charts.StaticNumericTickProviderSpec(staticTicks),
          renderSpec: charts.SmallTickRendererSpec(
              lineStyle: charts.LineStyleSpec(
                color: charts.Color.white
              ),
              labelStyle:charts.TextStyleSpec(
                  color: charts.Color.white
              )
          ),
      ),
      domainAxis: charts.NumericAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
            lineStyle: charts.LineStyleSpec(
                color: charts.Color.white
            ),
            labelStyle:charts.TextStyleSpec(
                color: charts.Color.white
            )
        ),
      ),
      behaviors: [new charts.SeriesLegend()],
    );
  }
}