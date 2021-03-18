/// Dash pattern line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';

/// Example of a line chart rendered with dash patterns.
class DotLineChart extends StatelessWidget {
  final String title;
  final String dotTitle;
  final List<ChartData> data;
  final List<ChartData> dotData;
  final bool animate;

  DotLineChart(this.title, this.dotTitle, this.data, this.dotData, {this.animate});
  List<charts.Series<ChartData, int>> _generateData() {
    return [
      new charts.Series<ChartData, int>(
        id: title,
        colorFn: (ChartData dt, __) => dt.color,
        domainFn: (ChartData dt, _) => dt.x,
        measureFn: (ChartData dt, _) => dt.y,
        data: data,
      ),
      new charts.Series<ChartData, int>(
        id: dotTitle,
        colorFn: (ChartData dt, __) => dt.color,
        dashPatternFn: (_, __) => [1, 1],
        domainFn: (ChartData dt, _) => dt.x,
        measureFn: (ChartData dt, _) => dt.y,
        data: dotData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {


    return new charts.LineChart(
      _generateData(),
      animate: animate,
      primaryMeasureAxis: charts.NumericAxisSpec(
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