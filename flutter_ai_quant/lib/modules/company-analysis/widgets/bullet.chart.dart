/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
class BulletChart extends StatefulWidget {
  final num firstArea;
  final num secondArea;
  final num goal;
  final num lineTarget;
  final bool animate;
  BulletChart(this.firstArea, this.secondArea, this.goal, this.lineTarget, {this.animate = false});

  @override
  _BulletChartState createState() => _BulletChartState();
}

class _BulletChartState extends State<BulletChart> {
  final staticTicks = <charts.TickSpec<num>>[
    charts.TickSpec(0),
    charts.TickSpec(25),
    charts.TickSpec(50),
    charts.TickSpec(75),
    charts.TickSpec(100),
  ];
  // /// Creates a stacked [BarChart] with sample data and no transition.
  // factory BulletChart.withSampleData() {
  //   return new BulletChart(
  //     _createSampleData(),
  //     // Disable animations for image tests.
  //     animate: false,
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(_genarate(),
      vertical: false,
      animate: widget.animate,
      barGroupingType: charts.BarGroupingType.stacked,
      customSeriesRenderers: [
        new charts.BarTargetLineRendererConfig<String>(
          // ID used to link series to this renderer.
            customRendererId: 'customGoal',
            groupingType: charts.BarGroupingType.stacked),
        new charts.BarRendererConfig<String>(
            maxBarWidthPx: 5,
            // ID used to link series to this renderer.
            customRendererId: 'customLineTarget',
            groupingType: charts.BarGroupingType.stacked),
      ],
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: charts.StaticNumericTickProviderSpec(staticTicks),
        showAxisLine: false,
        renderSpec: charts.SmallTickRendererSpec(
            lineStyle: charts.LineStyleSpec(
                color: charts.Color.white
            ),
            labelStyle:charts.TextStyleSpec(
                color: charts.Color.white
            ),
          tickLengthPx: 0
        ),
      ),
      // behaviors: [
      //   new charts.RangeAnnotation([
      //     new charts.LineAnnotationSegment<num>(
      //         20, charts.RangeAnnotationAxisType.measure,
      //         startLabel: 'Measure 2 Start',
      //         endLabel: 'Measure 2 End',
      //         color: charts.MaterialPalette.red.shadeDefault),
      //   ]),
      // ]
    );
  }

  /// Create series list with multiple series
  List<charts.Series<ChartData, String>> _genarate() {
    return [
      new charts.Series<ChartData, String>(
        id: 'first',
        colorFn: (ChartData sales, _) => charts.Color.black,
        domainFn: (ChartData sales, _) => sales.x,
        measureFn: (ChartData sales, _) => sales.y,
        data: [ChartData("", widget.firstArea)],
      ),
      new charts.Series<ChartData, String>(
        id: 'second',
        colorFn: (ChartData sales, _) => charts.Color.fromHex(code:"#808080"),
        domainFn: (ChartData sales, _) => sales.x,
        measureFn: (ChartData sales, _) => sales.y,
        data: [ChartData("", widget.secondArea)],
      ),
      new charts.Series<ChartData, String>(
        id: 'goal',
        colorFn: (ChartData sales, _) => charts.Color.fromHex(code:"#FF0000"),
        domainFn: (ChartData sales, _) => sales.x,
        measureFn: (ChartData sales, _) => sales.y,
        data: [ChartData("", widget.goal)],
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customGoal'),
      new charts.Series<ChartData, String>(
        id: 'line goal',
        domainFn: (ChartData sales, _) => sales.x,
        measureFn: (ChartData sales, _) => sales.y,
        data: [ChartData("", widget.lineTarget)],
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customLineTarget'),
    ];
  }
}