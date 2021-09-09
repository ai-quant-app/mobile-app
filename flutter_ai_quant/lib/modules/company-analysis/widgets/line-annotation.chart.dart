/// Line chart with line annotations example.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LineAnnotationChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  LineAnnotationChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and line annotations.
  ///
  /// The second annotation extends beyond the range of the series data,
  /// demonstrating the effect of the [Charts.RangeAnnotation.extendAxis] flag.
  /// This can be set to false to disable range extension.
  factory LineAnnotationChart.withSampleData() {
    return new LineAnnotationChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate,
        defaultRenderer: new charts.LineRendererConfig(
            areaOpacity: 0.1, includeArea: true, stacked: false),
        primaryMeasureAxis: charts.NumericAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
              lineStyle: charts.LineStyleSpec(
                  color: charts.Color.white
              ),
              labelStyle:charts.TextStyleSpec(
                  color: charts.Color.white,
              )
          ),
        ),
        domainAxis: charts.NumericAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
              lineStyle: charts.LineStyleSpec(
                  color: charts.Color.white
              ),
              labelStyle:charts.TextStyleSpec(
                  color: charts.Color.white,
              )
          ),
        ),
        behaviors: [
        charts.SeriesLegend(
          position: charts.BehaviorPosition.bottom
        ),
      charts.RangeAnnotation([
        // new charts.LineAnnotationSegment(
        //     1.0, charts.RangeAnnotationAxisType.domain,
        //     startLabel: 'Domain 1'),
        // new charts.LineAnnotationSegment(
        //     4, charts.RangeAnnotationAxisType.domain,
        //     endLabel: 'Domain 2', color: charts.MaterialPalette.gray.shade200),
        charts.LineAnnotationSegment(
            5, charts.RangeAnnotationAxisType.measure,
            color: charts.MaterialPalette.green.shadeDefault),
        charts.LineAnnotationSegment(
            -5, charts.RangeAnnotationAxisType.measure,
            color: charts.MaterialPalette.red.shadeDefault),
      ], layoutPaintOrder: 1000),
    ]);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 15),
      new LinearSales(2, -17),
      new LinearSales(3, 5),
      new LinearSales(4, 14),
      new LinearSales(5, -7),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        areaColorFn: (_, __) => charts.Color.fromHex(code: "#7C84BF"),
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}