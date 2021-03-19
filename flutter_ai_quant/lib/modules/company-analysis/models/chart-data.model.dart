import 'package:charts_common/common.dart' as charts;
class ChartData {
  final num x;
  final num y;
  final charts.Color color;
  ChartData(this.x, this.y, this.color);
}

// class Paint extends charts.SeriesRenderer{
//   @override
//   charts.GraphicsFactory graphicsFactory;
//
//   @override
//   String rendererId;
//
//   @override
//   SymbolRenderer symbolRenderer;
//
//   @override
//   DatumDetails addPositionToDetailsForSeriesDatum(DatumDetails details, charts.SeriesDatum seriesDatum) {
//     // TODO: implement addPositionToDetailsForSeriesDatum
//     throw UnimplementedError();
//   }
//
//   @override
//   // TODO: implement componentBounds
//   Rectangle<int> get componentBounds => throw UnimplementedError();
//
//   @override
//   void configureDomainAxes(List<MutableSeries> seriesList) {
//     // TODO: implement configureDomainAxes
//   }
//
//   @override
//   void configureMeasureAxes(List<MutableSeries> seriesList) {
//     // TODO: implement configureMeasureAxes
//   }
//
//   @override
//   void configureSeries(List<MutableSeries> seriesList) {
//     // TODO: implement configureSeries
//   }
//
//   @override
//   DatumDetails getDetailsForSeriesDatum(charts.SeriesDatum seriesDatum) {
//     // TODO: implement getDetailsForSeriesDatum
//     throw UnimplementedError();
//   }
//
//   @override
//   List<DatumDetails> getNearestDatumDetailPerSeries(Point<double> chartPoint, bool byDomain, Rectangle<int> boundsOverride, {bool selectOverlappingPoints = false, bool selectExactEventLocation = false}) {
//     // TODO: implement getNearestDatumDetailPerSeries
//     throw UnimplementedError();
//   }
//
//   @override
//   // TODO: implement isSeriesRenderer
//   bool get isSeriesRenderer => throw UnimplementedError();
//
//   @override
//   void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
//     // TODO: implement layout
//   }
//
//   @override
//   // TODO: implement layoutConfig
//   LayoutViewConfig get layoutConfig => throw UnimplementedError();
//
//   @override
//   ViewMeasuredSizes measure(int maxWidth, int maxHeight) {
//     // TODO: implement measure
//     throw UnimplementedError();
//   }
//
//   @override
//   void onAttach(BaseChart chart) {
//     // TODO: implement onAttach
//   }
//
//   @override
//   void onDetach(BaseChart chart) {
//     // TODO: implement onDetach
//   }
//
//   @override
//   void paint(charts.ChartCanvas canvas, double animationPercent) {
//     // TODO: implement paint
//   }
//
//   @override
//   void preprocessSeries(List<MutableSeries> seriesList) {
//     // TODO: implement preprocessSeries
//   }
//
//   @override
//   void update(List<charts.ImmutableSeries> seriesList, bool isAnimating) {
//     // TODO: implement update
//   }
//
// }


// class Test<D> implements charts.SeriesRendererConfig<D>{
//   @override
//   final String customRendererId = "tuandva";
//
//   @override
//   final charts.SymbolRenderer symbolRenderer = charts.TriangleSymbolRenderer();
//
//   @override
//   final rendererAttributes = [];
//
//   @override
//   charts.SeriesRenderer<D> build() {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }