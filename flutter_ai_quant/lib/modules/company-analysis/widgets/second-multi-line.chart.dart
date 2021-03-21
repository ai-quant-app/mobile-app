/// Dash pattern line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:charts_common/common.dart' as commoncharts;
/// Example of a line chart rendered with dash patterns.
class SecondMultiLineChart extends StatelessWidget {
  final Map<String, List<ChartData>> data;
  final Map<String, List<ChartData>> secondData;
  final bool animate;

  SecondMultiLineChart(this.data, this.secondData, {this.animate = false});
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
        )
      );
    });
    this.secondData.forEach((key, value) {
      ret.add(
        new charts.Series<ChartData, int>(
          id: key,
          colorFn: (ChartData dt, __) => dt.color,
          domainFn: (ChartData dt, _) => dt.x,
          measureFn: (ChartData dt, _) => dt.y,
          data: value,
        )..setAttribute(charts.measureAxisIdKey, 'secondaryMeasureAxisId')
        ..setAttribute(charts.rendererIdKey, 'customTriangle'),
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
      secondaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
            lineStyle: charts.LineStyleSpec(
            color: charts.Color.white
        ),
        labelStyle:charts.TextStyleSpec(
            color: charts.Color.white
          )
        ),
      ),
      customSeriesRenderers: [
        charts.PointRendererConfig(
          // ID used to link series to this renderer.
          customRendererId: 'customTriangle',
          symbolRenderer: commoncharts.TriangleSymbolRenderer()
        )
      ],
      behaviors: [new charts.SeriesLegend()],
    );
  }
}