/// Horizontal bar chart with bar label renderer example and hidden domain axis.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';

class HorizontalBarLabelChart extends StatelessWidget {
  final Map<String, ChartData> data;
  final bool animate;

  HorizontalBarLabelChart(this.data, {this.animate});

  // /// Creates a [BarChart] with sample data and no transition.
  // factory HorizontalBarLabelChart.withSampleData() {
  //   return new HorizontalBarLabelChart(
  //     _createSampleData(),
  //     // Disable animations for image tests.
  //     animate: false,
  //   );
  // }


  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit and the
  // area outside of the bar is larger than the bar, it will draw outside of the
  // bar. Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      _generateData(),
      animate: animate,
      vertical: false,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      // Hide domain axis.
      domainAxis:
      new charts.OrdinalAxisSpec(renderSpec: new charts.NoneRenderSpec()),
      behaviors: [
        new charts.SeriesLegend(
          position: charts.BehaviorPosition.bottom,
          horizontalFirst: false,
          desiredMaxRows: 2,
        )
      ],
    );
  }

  List<charts.Series<ChartData, String>> _generateData() {
    List<charts.Series<ChartData, String>> ret = [];
    data.forEach((key, value) {
      ret.add(
          charts.Series<ChartData, String>(
              id: key,
              colorFn: (ChartData dt, _) => dt.color,
              domainFn: (ChartData dt, _) => dt.x.toString(),
              measureFn: (ChartData dt, _) => dt.y,
              data: [value],
              // Set a label accessor to control the text of the bar label.
              labelAccessorFn: (ChartData dt, _) =>
              '${dt.y.toString()}'
          )
      );
    });
    return ret;
  }
}