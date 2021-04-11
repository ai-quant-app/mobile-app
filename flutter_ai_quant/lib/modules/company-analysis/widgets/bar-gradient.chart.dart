/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_ai_quant/modules/company-analysis/models/bar_target_line_renderer_config.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:charts_common/common.dart' as commonCharts;

class BarGradientChart extends StatefulWidget {
  final num goal;
  final num target;
  final bool animate;
  BarGradientChart(this.goal, this.target, {this.animate = false});

  @override
  _BarGradientChartState createState() => _BarGradientChartState();
}

class _BarGradientChartState extends State<BarGradientChart> {
  // final staticTicks = <charts.TickSpec<num>>[
  //   charts.TickSpec(0),
  //   charts.TickSpec(25),
  //   charts.TickSpec(50),
  //   charts.TickSpec(75),
  //   charts.TickSpec(100),
  // ];
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
        charts.BarTargetLineRendererConfig<String>(
          // ID used to link series to this renderer.
            customRendererId: 'customGoal',
            groupingType: charts.BarGroupingType.stacked),
        BarTargetTriangleRendererConfig<String>(
            // ID used to link series to this renderer.
            customRendererId: 'customTarget',
            groupingType: charts.BarGroupingType.stacked,
            symbolRenderer: commonCharts.TriangleSymbolRenderer()
        ),
      ],
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
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
        data: [
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
          new ChartData("", 5),
        ],
      ),
      new charts.Series<ChartData, String>(
        id: 'goal',
        colorFn: (ChartData sales, _) => charts.Color.fromHex(code:"#FF0000"),
        domainFn: (ChartData sales, _) => sales.x,
        measureFn: (ChartData sales, _) => sales.y,
        data: [new ChartData("",widget.goal)],
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customGoal'),
      new charts.Series<ChartData, String>(
        id: 'line goal',
        colorFn: (ChartData sales, _) => charts.Color.white,
        domainFn: (ChartData sales, _) => sales.x,
        measureFn: (ChartData sales, _) => sales.y,
        data: [new ChartData("", widget.target)],
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTarget'),
    ];
  }
}