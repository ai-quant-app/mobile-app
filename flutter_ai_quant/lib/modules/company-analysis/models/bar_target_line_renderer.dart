// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:math' show Point, Rectangle, max, min;

import 'package:flutter_ai_quant/modules/company-analysis/models/bar_target_line_renderer_config.dart';
import 'package:meta/meta.dart' show required;
import 'package:charts_common/common.dart' as commonCharts;
import 'package:charts_common/src/chart/bar/base_bar_renderer.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer_element.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';


/// Renders series data as a series of bar target lines.
///
/// Usually paired with a BarRenderer to display target metrics alongside actual
/// metrics.
class BarTargetTriangleRenderer<D> extends BaseBarRenderer<D,
    _BarTargetLineRendererElement, _AnimatedBarTargetLine<D>> {
  /// If we are grouped, use this spacing between the bars in a group.
  final _barGroupInnerPadding = 2;

  /// Standard color for all bar target lines.
  final _color = commonCharts.Color(r: 0, g: 0, b: 0, a: 153);

  factory BarTargetTriangleRenderer(
      {BarTargetTriangleRendererConfig<D> config,
      String rendererId = 'barTargetLine'}) {
    config ??= BarTargetTriangleRendererConfig<D>();
    return BarTargetTriangleRenderer._internal(
        config: config, rendererId: rendererId);
  }

  BarTargetTriangleRenderer._internal(
      {BarTargetTriangleRendererConfig<D> config, String rendererId})
      : super(
            config: config,
            rendererId: rendererId,
            layoutPaintOrder: config.layoutPaintOrder);

  @override
  void configureSeries(List<commonCharts.MutableSeries<D>> seriesList) {
    seriesList.forEach((commonCharts.MutableSeries<D> series) {
      series.colorFn ??= (_) => _color;
      series.fillColorFn ??= (_) => _color;

      // Fill in missing seriesColor values with the color of the first datum in
      // the series. Note that [Series.colorFn] should always return a color.
      if (series.seriesColor == null) {
        try {
          series.seriesColor = series.colorFn(0);
        } catch (exception) {
          series.seriesColor = _color;
        }
      }
    });
  }

  @override
  commonCharts.DatumDetails<D> addPositionToDetailsForSeriesDatum(
      commonCharts.DatumDetails<D> details, commonCharts.SeriesDatum<D> seriesDatum) {
    final series = details.series;

    final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;

    final barGroupIndex = series.getAttr(barGroupIndexKey);
    final previousBarGroupWeight = series.getAttr(previousBarGroupWeightKey);
    final barGroupWeight = series.getAttr(barGroupWeightKey);
    final allBarGroupWeights = series.getAttr(allBarGroupWeightsKey);
    final numBarGroups = series.getAttr(barGroupCountKey);

    final points = _getTargetLinePoints(
        details.domain,
        domainAxis,
        domainAxis.rangeBand.round(),
        config.maxBarWidthPx,
        details.measure,
        details.measureOffset,
        measureAxis,
        barGroupIndex,
        previousBarGroupWeight,
        barGroupWeight,
        allBarGroupWeights,
        numBarGroups);

    Point<double> chartPosition;

    if (renderingVertically) {
      chartPosition = Point<double>(
          (points[0].x + (points[1].x - points[0].x) / 2).toDouble(),
          points[0].y.toDouble());
    } else {
      chartPosition = Point<double>(points[0].x.toDouble(),
          (points[0].y + (points[1].y - points[0].y) / 2).toDouble());
    }

    return commonCharts.DatumDetails.from(details, chartPosition: chartPosition);
  }

  @override
  _BarTargetLineRendererElement getBaseDetails(dynamic datum, int index) {
    final BarTargetTriangleRendererConfig<D> localConfig = config;
    return _BarTargetLineRendererElement()
      ..roundEndCaps = localConfig.roundEndCaps;
  }

  /// Generates an [_AnimatedBarTargetLine] to represent the previous and
  /// current state of one bar target line on the chart.
  @override
  _AnimatedBarTargetLine<D> makeAnimatedBar(
      {String key,
        commonCharts.ImmutableSeries<D> series,
      dynamic datum,
        commonCharts.Color color,
      List<int> dashPattern,
      _BarTargetLineRendererElement details,
      D domainValue,
      ImmutableAxis<D> domainAxis,
      int domainWidth,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      double measureAxisPosition,
      commonCharts.Color fillColor,
      commonCharts.FillPatternType fillPattern,
      int barGroupIndex,
      double previousBarGroupWeight,
      double barGroupWeight,
      List<double> allBarGroupWeights,
      int numBarGroups,
      double strokeWidthPx,
      bool measureIsNull,
      bool measureIsNegative}) {
    return _AnimatedBarTargetLine(
        key: key, datum: datum, series: series, domainValue: domainValue)
      ..setNewTarget(makeBarRendererElement(
          color: color,
          details: details,
          dashPattern: dashPattern,
          domainValue: domainValue,
          domainAxis: domainAxis,
          domainWidth: domainWidth,
          measureValue: measureValue,
          measureOffsetValue: measureOffsetValue,
          measureAxisPosition: measureAxisPosition,
          measureAxis: measureAxis,
          fillColor: fillColor,
          fillPattern: fillPattern,
          strokeWidthPx: strokeWidthPx,
          barGroupIndex: barGroupIndex,
          previousBarGroupWeight: previousBarGroupWeight,
          barGroupWeight: barGroupWeight,
          allBarGroupWeights: allBarGroupWeights,
          numBarGroups: numBarGroups,
          measureIsNull: measureIsNull,
          measureIsNegative: measureIsNegative));
  }

  /// Generates a [_BarTargetLineRendererElement] to represent the rendering
  /// data for one bar target line on the chart.
  @override
  _BarTargetLineRendererElement makeBarRendererElement(
      {commonCharts.Color color,
      List<int> dashPattern,
      _BarTargetLineRendererElement details,
      D domainValue,
      ImmutableAxis<D> domainAxis,
      int domainWidth,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      double measureAxisPosition,
      commonCharts.Color fillColor,
      commonCharts.FillPatternType fillPattern,
      double strokeWidthPx,
      int barGroupIndex,
      double previousBarGroupWeight,
      double barGroupWeight,
      List<double> allBarGroupWeights,
      int numBarGroups,
      bool measureIsNull,
      bool measureIsNegative}) {
    return _BarTargetLineRendererElement()
      ..color = color
      ..dashPattern = dashPattern
      ..fillColor = fillColor
      ..fillPattern = fillPattern
      ..measureAxisPosition = measureAxisPosition
      ..roundEndCaps = details.roundEndCaps
      ..strokeWidthPx = strokeWidthPx
      ..measureIsNull = measureIsNull
      ..measureIsNegative = measureIsNegative
      ..points = _getTargetLinePoints(
          domainValue,
          domainAxis,
          domainWidth,
          config.maxBarWidthPx,
          measureValue,
          measureOffsetValue,
          measureAxis,
          barGroupIndex,
          previousBarGroupWeight,
          barGroupWeight,
          allBarGroupWeights,
          numBarGroups);
  }

  @override
  void paintBar(
    commonCharts.ChartCanvas canvas,
    double animationPercent,
    Iterable<_BarTargetLineRendererElement> barElements,
  ) {
    barElements.forEach((_BarTargetLineRendererElement bar) {
      // TODO: Combine common line attributes into
      // GraphicsFactory.lineStyle or similar.
      final num offset = 5;
      canvas.drawPolygon(
          points: [
            Point(bar.points[0].x, bar.points[0].y + offset),
            Point(bar.points[1].x - offset, bar.points[1].y + offset),
            Point(bar.points[1].x + offset, bar.points[1].y + offset),
          ],
          fill: bar.color,
          stroke: bar.color,
          strokeWidthPx: bar.strokeWidthPx);
    });
  }

  /// Generates a set of points that describe a bar target line.
  List<Point<int>> _getTargetLinePoints(
      D domainValue,
      ImmutableAxis<D> domainAxis,
      int domainWidth,
      int maxBarWidthPx,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      int barGroupIndex,
      double previousBarGroupWeight,
      double barGroupWeight,
      List<double> allBarGroupWeights,
      int numBarGroups) {
    // If no weights were passed in, default to equal weight per bar.
    if (barGroupWeight == null) {
      barGroupWeight = 1 / numBarGroups;
      previousBarGroupWeight = barGroupIndex * barGroupWeight;
    }

    final BarTargetTriangleRendererConfig<D> localConfig = config;

    // Calculate how wide each bar target line should be within the group of
    // bar target lines. If we only have one series, or are stacked, then
    // barWidth should equal domainWidth.
    int spacingLoss = _barGroupInnerPadding * (numBarGroups - 1);
    int desiredWidth = ((domainWidth - spacingLoss) / numBarGroups).round();

    if (config.maxBarWidthPx != null) {
      desiredWidth = min(desiredWidth, config.maxBarWidthPx);
      domainWidth = desiredWidth * numBarGroups + spacingLoss;
    }

    // If the series was configured with a weight pattern, treat the "max" bar
    // width as the average max width. The overall total width will still equal
    // max times number of bars, but this results in a nicer final picture.
    int barWidth = desiredWidth;
    if (allBarGroupWeights != null) {
      barWidth =
          (desiredWidth * numBarGroups * allBarGroupWeights[barGroupIndex])
              .floor();
    }
    // Get the overdraw boundaries.
    var overDrawOuterPx = localConfig.overDrawOuterPx;
    var overDrawPx = localConfig.overDrawPx;

    int overDrawStartPx = (barGroupIndex == 0) && overDrawOuterPx != null
        ? overDrawOuterPx
        : overDrawPx;

    int overDrawEndPx =
        (barGroupIndex == numBarGroups - 1) && overDrawOuterPx != null
            ? overDrawOuterPx
            : overDrawPx;

    // Flip bar group index for calculating location on the domain axis if RTL.
    final adjustedBarGroupIndex =
        isRtl ? numBarGroups - barGroupIndex - 1 : barGroupIndex;

    // Calculate the start and end of the bar target line, taking into account
    // accumulated padding for grouped bars.
    num previousAverageWidth = adjustedBarGroupIndex > 0
        ? ((domainWidth - spacingLoss) *
                (previousBarGroupWeight / adjustedBarGroupIndex))
            .round()
        : 0;

    int domainStart = (domainAxis.getLocation(domainValue) -
            (domainWidth / 2) +
            (previousAverageWidth + _barGroupInnerPadding) *
                adjustedBarGroupIndex -
            overDrawStartPx)
        .round();

    int domainEnd = domainStart + barWidth + overDrawStartPx + overDrawEndPx;

    measureValue = measureValue ?? 0;

    // Calculate measure locations. Stacked bars should have their
    // offset calculated previously.
    int measureStart =
        measureAxis.getLocation(measureValue + measureOffsetValue).round();

    List<Point<int>> points;
    if (renderingVertically) {
      points = [
        Point<int>(domainStart, measureStart),
        Point<int>(domainEnd, measureStart)
      ];
    } else {
      points = [
        Point<int>(measureStart, domainStart),
        Point<int>(measureStart, domainEnd)
      ];
    }
    return points;
  }

  @override
  Rectangle<int> getBoundsForBar(_BarTargetLineRendererElement bar) {
    final points = bar.points;
    int top;
    int bottom;
    int left;
    int right;
    points.forEach((Point<int> p) {
      top = top != null ? min(top, p.y) : p.y;
      left = left != null ? min(left, p.x) : p.x;
      bottom = bottom != null ? max(bottom, p.y) : p.y;
      right = right != null ? max(right, p.x) : p.x;
    });
    return Rectangle<int>(left, top, right - left, bottom - top);
  }
}

class _BarTargetLineRendererElement extends BaseBarRendererElement {
  List<Point<int>> points;
  bool roundEndCaps;

  _BarTargetLineRendererElement();

  _BarTargetLineRendererElement.clone(_BarTargetLineRendererElement other)
      : super.clone(other) {
    points = List<Point<int>>.from(other.points);
    roundEndCaps = other.roundEndCaps;
  }

  @override
  void updateAnimationPercent(BaseBarRendererElement previous,
      BaseBarRendererElement target, double animationPercent) {
    final _BarTargetLineRendererElement localPrevious = previous;
    final _BarTargetLineRendererElement localTarget = target;

    final previousPoints = localPrevious.points;
    final targetPoints = localTarget.points;

    Point<int> lastPoint;

    int pointIndex;
    for (pointIndex = 0; pointIndex < targetPoints.length; pointIndex++) {
      var targetPoint = targetPoints[pointIndex];

      // If we have more points than the previous line, animate in the new point
      // by starting its measure position at the last known official point.
      Point<int> previousPoint;
      if (previousPoints.length - 1 >= pointIndex) {
        previousPoint = previousPoints[pointIndex];
        lastPoint = previousPoint;
      } else {
        previousPoint = Point<int>(targetPoint.x, lastPoint.y);
      }

      var x = ((targetPoint.x - previousPoint.x) * animationPercent) +
          previousPoint.x;

      var y = ((targetPoint.y - previousPoint.y) * animationPercent) +
          previousPoint.y;

      if (points.length - 1 >= pointIndex) {
        points[pointIndex] = Point<int>(x.round(), y.round());
      } else {
        points.add(Point<int>(x.round(), y.round()));
      }
    }

    // Removing extra points that don't exist anymore.
    if (pointIndex < points.length) {
      points.removeRange(pointIndex, points.length);
    }

    strokeWidthPx = ((localTarget.strokeWidthPx - localPrevious.strokeWidthPx) *
            animationPercent) +
        localPrevious.strokeWidthPx;

    roundEndCaps = localTarget.roundEndCaps;

    super.updateAnimationPercent(previous, target, animationPercent);
  }
}

class _AnimatedBarTargetLine<D>
    extends BaseAnimatedBar<D, _BarTargetLineRendererElement> {
  _AnimatedBarTargetLine(
      {@required String key,
      @required dynamic datum,
      @required commonCharts.ImmutableSeries<D> series,
      @required D domainValue})
      : super(key: key, datum: datum, series: series, domainValue: domainValue);

  @override
  void animateElementToMeasureAxisPosition(BaseBarRendererElement target) {
    final _BarTargetLineRendererElement localTarget = target;

    final newPoints = <Point<int>>[];
    for (var index = 0; index < localTarget.points.length; index++) {
      final targetPoint = localTarget.points[index];

      newPoints.add(
          Point<int>(targetPoint.x, localTarget.measureAxisPosition.round()));
    }
    localTarget.points = newPoints;
  }

  @override
  _BarTargetLineRendererElement clone(_BarTargetLineRendererElement bar) =>
      _BarTargetLineRendererElement.clone(bar);
}
