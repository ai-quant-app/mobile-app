/// Example of an ordinal combo chart with two series rendered as bars, and a
/// third rendered as a line.
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class OrdinalComboBarLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  OrdinalComboBarLineChart(this.seriesList, {this.animate});

  factory OrdinalComboBarLineChart.withSampleData() {
    return new OrdinalComboBarLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.OrdinalComboChart(seriesList,
        animate: animate,
        // Configure the default renderer as a bar renderer.
        defaultRenderer: new charts.BarRendererConfig(
            groupingType: charts.BarGroupingType.grouped,
            maxBarWidthPx: 2
        ),
        // Custom renderer configuration for the line series. This will be used for
        // any series that does not define a rendererIdKey.
        primaryMeasureAxis: charts.NumericAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
              lineStyle: charts.LineStyleSpec(
                  color: charts.Color.white
              ),
              labelStyle:charts.TextStyleSpec(
                  color: charts.Color.white,
                  fontSize: 8
              )
          ),
            tickProviderSpec: charts.BasicNumericTickProviderSpec(
              desiredTickCount: 5,
            ),
        ),
        domainAxis: charts.OrdinalAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
              lineStyle: charts.LineStyleSpec(
                  color: charts.Color.white
              ),
              labelStyle:charts.TextStyleSpec(
                  color: charts.Color.white,
                fontSize: 8
              )
          ),
        ),
        customSeriesRenderers: [
          new charts.LineRendererConfig(
            // ID used to link series to this renderer.
              customRendererId: 'customLine')
        ],
        behaviors: [
          new charts.SeriesLegend()
        ],
    );

  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final desktopSalesData = [
      new OrdinalSales('1', 5),
      new OrdinalSales('2', 25),
      new OrdinalSales('3', 100),
      new OrdinalSales('4', 75),
      new OrdinalSales('5', 21),
      new OrdinalSales('6', 49),
      new OrdinalSales('7', 83),
      new OrdinalSales('8', 14),
      new OrdinalSales('9', 90),
      new OrdinalSales('10', 5),
      new OrdinalSales('11', 5),
      new OrdinalSales('12', 25),
      new OrdinalSales('13', 100),
      new OrdinalSales('14', 75),
      new OrdinalSales('15', 21),
      new OrdinalSales('16', 49),
      new OrdinalSales('17', 83),
      new OrdinalSales('18', 14),
      new OrdinalSales('19', 90),
      new OrdinalSales('20', 90),
      new OrdinalSales('21', 5),
      new OrdinalSales('22', 25),
      new OrdinalSales('23', 100),
      new OrdinalSales('24', 75),
      new OrdinalSales('25', 21),
      new OrdinalSales('26', 49),
      new OrdinalSales('27', 83),
      new OrdinalSales('28', 14),
      new OrdinalSales('29', 90),
      new OrdinalSales('30', 90),
    ];

    final mobileSalesData = [
      new OrdinalSales('1', 10),
      new OrdinalSales('2', 50),
      new OrdinalSales('3', 200),
      new OrdinalSales('4', 150),
      new OrdinalSales('5', 100),
      new OrdinalSales('6', 80),
      new OrdinalSales('7', 75),
      new OrdinalSales('8', 93),
      new OrdinalSales('9', 110),
      new OrdinalSales('10', 115),
      new OrdinalSales('11', 10),
      new OrdinalSales('12', 50),
      new OrdinalSales('13', 200),
      new OrdinalSales('14', 150),
      new OrdinalSales('15', 100),
      new OrdinalSales('16', 80),
      new OrdinalSales('17', 75),
      new OrdinalSales('18', 93),
      new OrdinalSales('19', 110),
      new OrdinalSales('20', 115),
      new OrdinalSales('21', 10),
      new OrdinalSales('22', 50),
      new OrdinalSales('23', 200),
      new OrdinalSales('24', 150),
      new OrdinalSales('25', 100),
      new OrdinalSales('26', 80),
      new OrdinalSales('27', 75),
      new OrdinalSales('28', 93),
      new OrdinalSales('29', 110),
      new OrdinalSales('30', 115),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
          id: 'Desktop',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: desktopSalesData),
      new charts.Series<OrdinalSales, String>(
          id: 'Mobile ',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: mobileSalesData)
      // Configure our custom line renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customLine'),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}