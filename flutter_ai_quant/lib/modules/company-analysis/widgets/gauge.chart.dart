import 'dart:math';

/// Gauge chart example, where the data does not cover a full revolution in the
/// chart.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/gages-chart-data.model.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class GaugeChart extends StatefulWidget {
  final double size;
  final List<GaugeChartData> data;
  final bool animate;
  final double value;
  GaugeChart(this.data, this.size, this.value, {this.animate = false});
  @override
  _GaugeChartState createState() => _GaugeChartState();
}


class _GaugeChartState extends State<GaugeChart> {
  @override
  Widget build(BuildContext context) {
    return Stack (
      children: [
        charts.PieChart(
          _generateData(),
          animate: widget.animate,
          // Configure the width of the pie slices to 30px. The remaining space in
          // the chart will be left as a hole in the center. Adjust the start
          // angle and the arc length of the pie so it resembles a gauge.
          defaultRenderer: new charts.ArcRendererConfig(
              arcWidth: 60.sp.round(),
              startAngle: pi,
              arcLength: pi,
              // arcRendererDecorators: [new charts.ArcLabelDecorator()]
          )
        ),
        Container(
          alignment: Alignment.center,
          child: Transform.rotate(
            angle: pi / 2 + (pi / 100 * widget.value) ,
            child: ClipPath(
              clipper: PointerNeedleClipper(),
              child: Container(
                width: widget.size,
                height: widget.size,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]
    );
  }

  /// Create one series with sample hard coded data.
  List<charts.Series<GaugeChartData, String>> _generateData() {
    return [
      new charts.Series<GaugeChartData, String>(
        id: 'Segments',
        colorFn: (GaugeChartData segment, _) => segment.color,
        domainFn: (GaugeChartData segment, _) => segment.segment,
        measureFn: (GaugeChartData segment, _) => segment.size,
        data: widget.data,
      )
    ];
  }
}


class PointerNeedleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.5, size.width * 0.5);
    path.lineTo(size.width * 0.5 + size.width / 30, size.height * 0.5);
    path.lineTo(size.width * 0.5 + 1, size.height - size.width / 30);
    path.lineTo(size.width * 0.5 - 1, size.height - size.width / 30);
    path.lineTo(size.width * 0.5 - size.width / 30, size.height * 0.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(PointerNeedleClipper oldClipper) => false;
}