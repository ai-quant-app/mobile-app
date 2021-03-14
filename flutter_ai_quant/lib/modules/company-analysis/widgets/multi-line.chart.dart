/// Dash pattern line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

/// Example of a line chart rendered with dash patterns.
class MultiLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  MultiLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory MultiLineChart.withSampleData() {
    return new MultiLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create three series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final myFakeDesktopData = [
      new LinearSales(0, 0),
      new LinearSales(1, 10),
      new LinearSales(2, 20),
      new LinearSales(3, 30),
      new LinearSales(4, 40),
      new LinearSales(5, 50),
      new LinearSales(6, 60),
      new LinearSales(7, 70),
      new LinearSales(8, 80),
      new LinearSales(9, 90),
      new LinearSales(10, 100),
    ];

    var myFakeTabletData = [
      new LinearSales(0, 0),
      new LinearSales(1, 15),
      new LinearSales(2, 25),
      new LinearSales(3, 35),
      new LinearSales(4, 46),
      new LinearSales(5, 57),
      new LinearSales(6, 68),
      new LinearSales(7, 79),
      new LinearSales(8, 84),
      new LinearSales(9, 92),
      new LinearSales(10, 100),
    ];
    //
    // var myFakeMobileData = [
    //   new LinearSales(0, 15),
    //   new LinearSales(1, 75),
    //   new LinearSales(2, 300),
    //   new LinearSales(3, 225),
    // ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeDesktopData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeTabletData,
      ),
      // new charts.Series<LinearSales, int>(
      //   id: 'Mobile',
      //   colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      //   domainFn: (LinearSales sales, _) => sales.year,
      //   measureFn: (LinearSales sales, _) => sales.sales,
      //   data: myFakeMobileData,
      // )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}