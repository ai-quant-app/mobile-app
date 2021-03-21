/// Example of a simple line chart.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleLineChartV2 extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChartV2(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChartV2.withSampleData() {
    return new SimpleLineChartV2(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate,
        domainAxis: new charts.NumericAxisSpec(
            renderSpec: new charts.NoneRenderSpec(),
        ),

        /// Customize the measure axis to have 2 ticks,
        primaryMeasureAxis: new charts.NumericAxisSpec(
          renderSpec: new charts.NoneRenderSpec(),
          // renderSpec: new charts.GridlineRendererSpec(
          //     lineStyle: new charts.LineStyleSpec(
          //         color: charts.MaterialPalette.transparent),
          // ),
          // tickProviderSpec:
          // new charts.BasicNumericTickProviderSpec(desiredTickCount: 4)
        )
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
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