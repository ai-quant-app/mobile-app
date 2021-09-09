import 'package:charts_common/common.dart' as charts;
class ChartData<D extends Object> {
  final D x;
  final num y;
  final charts.Color color;
  ChartData(this.x, this.y, this.color);
}