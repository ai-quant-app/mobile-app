import 'package:flutter_charts/flutter_charts.dart';
import 'package:flutter/material.dart';

class LineChart extends StatefulWidget {
  LineChart({Key key}) : super(key: key);
  @override
  _LineChartState createState() => new _LineChartState();
}

class _LineChartState extends State<LineChart> {
  /// Define options for line chart, if used in the demo.
  LineChartOptions _lineChartOptions = new LineChartOptions();

  /// Define options for vertical bar chart, if used in the demo
  ChartOptions _verticalBarChartOptions = new VerticalBarChartOptions();

  /// Define Layout strategy go labels. todo-null-safety : this can be null here
  LabelLayoutStrategy _xContainerLabelLayoutStrategy =
  new DefaultIterativeLabelLayoutStrategy(
    options: new VerticalBarChartOptions(),
  );

  /// Define data to be displayed
  ChartData _chartData = new RandomChartData(
      useUserProvidedYLabels: new LineChartOptions().useUserProvidedYLabels);

  /// Default constructor uses member defaults for all options and data.
  _LineChartState();

  /// Constructor sets all options and data.
  _LineChartState.fromOptionsAndData({
    required LineChartOptions lineChartOptions,
    required ChartOptions verticalBarChartOptions,
    required LabelLayoutStrategy xContainerLabelLayoutStrategy,
    required ChartData chartData,
  });
  /* initializer list: an alternative to initializing at the point of definition
      : _lineChartOptions = new LineChartOptions(),
        _verticalBarChartOptions = new VerticalBarChartOptions(),
        _xContainerLabelLayoutStrategy =
            new DefaultIterativeLabelLayoutStrategy(
          options: new VerticalBarChartOptions(),
        ),
        _chartData = new RandomChartData(
            useUserProvidedYLabels:
                new LineChartOptions().useUserProvidedYLabels)
  */
  // {
  //   _lineChartOptions = lineChartOptions;
  //   _verticalBarChartOptions = verticalBarChartOptions;
  //   _xContainerLabelLayoutStrategy = xContainerLabelLayoutStrategy;
  //   _chartData = chartData;
  // }

  /// Constructor allows to set only data and keep other values default.
  _LineChartState.fromData({required ChartData chartData}) {
    _chartData = chartData;
  }

  /// Define options and data for chart
  void defineOptionsAndData() {
    _chartData = new RandomChartData(
        useUserProvidedYLabels: _lineChartOptions.useUserProvidedYLabels);
  }

  /* ALWAYS ON TOP - DEFAULT - Default - Random data
  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new RandomChartData(
        useUserProvidedYLabels: _lineChartOptions.useUserProvidedYLabels);
  }
  */

  /* 9  - Explicit use of DefaultIterativeLabelLayoutStrategy.
          The _xContainerLabelLayoutStrategy must also work commented out.

  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    // If you were to use your own extension of
    //   DefaultIterativeLabelLayoutStrategy or LayoutStrategy,
    //   this is how to create an instance.
    // If _xContainerLabelLayoutStrategy
    //   is not set (remains null), the charts instantiate
    //   the DefaultIterativeLabelLayoutStrategy.
    _xContainerLabelLayoutStrategy = new DefaultIterativeLabelLayoutStrategy(
      options: _verticalBarChartOptions,
    );
    // _xContainerLabelLayoutStrategy = null;
    _chartData = new RandomChartData(
        useUserProvidedYLabels: _lineChartOptions.useUserProvidedYLabels);
  }
   */

  /* 8 - Explicit use of DefaultIterativeLabelLayoutStrategy (see also 9),
         to show how to use in case extensions are needed

  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _xContainerLabelLayoutStrategy = new DefaultIterativeLabelLayoutStrategy(
      options: _verticalBarChartOptions,
    );
    _chartData = new ChartData();
    _chartData.dataRowsLegends = ["Spring", "Summer", "Fall", "Winter"];
    _chartData.dataRows = [
      [1.0, 2.0, 3.0, 4.0, 6.0],
      [4.0, 3.0, 5.0, 6.0, 1.0],
    ];
    _chartData.xLabels = ["One", "Two", "Three", "Four", "Five"];
    _chartData.assignDataRowsDefaultColors();
    // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
  }
   */

  /* 7 - Default - Random data
  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new RandomChartData(
        useUserProvidedYLabels: _lineChartOptions.useUserProvidedYLabels);
  }
  */

  /* 6 Test a bug reported by Lonenzo Tejera - todo-1 - also check Y range that should have more points.

  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new ChartData();
    _chartData.dataRowsLegends = [
      "Spring",
      "Summer",
      "Fall",
      "Winter"];
    _chartData.dataRows = [
      [1.0, 2.0, 3.0, 4.0, 6.0],
      [4.0, 3.0, 5.0, 6.0, 1.0],
    ];
    _chartData.xLabels =  ["One", "Two", "Three", "Four", "Five"];
    _chartData.assignDataRowsDefaultColors();
    // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
  }
   */

  /* 5 Demonstrate order of painting lines on the line chart,
       when dataRows lines are on top of each other

  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new ChartData();
    _chartData.dataRowsLegends = [
      "Spring",
      "Summer",
      "Fall",
      "Winter"];
    _chartData.dataRows = [
      [10.0, 20.0,  5.0,  30.0,  5.0,  20.0, ],
      [10.0, 20.0,  5.0,  30.0,  5.0,  30.0, ],
      [25.0, 40.0, 20.0,  80.0, 12.0,  90.0, ],
      [25.0, 40.0, 20.0,  80.0, 12.0, 100.0, ],
    ];
    _chartData.xLabels =  ["Wolf", "Deer", "Owl", "Mouse", "Hawk", "Vole"];
    _chartData.assignDataRowsDefaultColors();
    // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
  }
   */

  /* 4 Basic simpliest demo

   void defineOptionsAndData() {
     _lineChartOptions = new LineChartOptions();
     _verticalBarChartOptions = new VerticalBarChartOptions();
     _chartData = new RandomChartData(useUserProvidedYLabels: _lineChartOptions.useUserProvidedYLabels);
   }
   */

  /* 3
   void defineOptionsAndData() {
     _lineChartOptions = new LineChartOptions();
     _verticalBarChartOptions = new VerticalBarChartOptions();
     _chartData = new ChartData();
     _chartData.dataRowsLegends = [
       "Spring",
       "Summer",
       "Fall",
       "Winter"];
     _chartData.dataRows = [
       [10.0, 20.0,  5.0,  30.0,  5.0,  20.0, ],
       [30.0, 60.0, 16.0, 100.0, 12.0, 120.0, ],
       [25.0, 40.0, 20.0,  80.0, 12.0,  90.0, ],
       [12.0, 30.0, 18.0,  40.0, 10.0,  30.0, ],
     ];
     _chartData.xLabels =  ["Wolf", "Deer", "Owl", "Mouse", "Hawk", "Vole"];
     _chartData.assignDataRowsDefaultColors();
     // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
   }
   */

  /* 2
   void defineOptionsAndData() {
     // This example shows user defined Y Labels.
     //   When setting Y labels by user, the dataRows value scale
     //   is irrelevant. User can use for example interval <0, 1>,
     //   <0, 10>, or any other, even negative ranges. Here we use <0-10>.
     //   The only thing that matters is  the relative values in the data Rows.

     // Note that current implementation sets
     // the minimum of dataRows range (1.0 in this example)
     // on the level of the first Y Label ("Ok" in this example),
     // and the maximum  of dataRows range (10.0 in this example)
     // on the level of the last Y Label ("High" in this example).
     // This is not desirable, we need to add a userProvidedYLabelsBoundaryMin/Max.
     _lineChartOptions = new LineChartOptions();
     _verticalBarChartOptions = new VerticalBarChartOptions();
     _chartData = new ChartData();
     _chartData.dataRowsLegends = [
       "Java",
       "Dart",
       "Python",
       "Newspeak"];
     _chartData.dataRows = [
       [9.0, 4.0,  3.0,  9.0, ],
       [7.0, 6.0,  7.0,  6.0, ],
       [4.0, 9.0,  6.0,  8.0, ],
       [3.0, 9.0, 10.0,  1.0, ],
     ];
     _chartData.xLabels =  ["Fast", "Readable", "Novel", "Use"];
     _chartData.dataRowsColors = [
       Colors.blue,
       Colors.yellow,
       Colors.green,
       Colors.amber,
     ];
     _lineChartOptions.useUserProvidedYLabels = true; // use labels below
     _chartData.yLabels = [
       "Ok",
       "Higher",
       "High",

     ];
   }
  */

  /* 1
   void defineOptionsAndData() {
     // In each column, adding it's absolute values should add to same number:
     // 100 would make more sense, to represent 100% of stocks in each category.
    _lineChartOptions = new LineChartOptions();
     _verticalBarChartOptions = new VerticalBarChartOptions();
     _chartData = new ChartData();
     _chartData.dataRowsLegends = [
       "-2%_0%",
       "<-2%",
       "0%_+2%",
       ">+2%"];
     // each column should add to same number. everything else is relative.
     _chartData.dataRows = [
       [-9.0, -8.0,  -8.0,  -5.0, -8.0, ],
       [-1.0, -2.0,  -4.0,  -1.0, -1.0, ],
       [7.0, 8.0,  7.0, 11.0, 9.0, ],
       [3.0, 2.0, 1.0,  3.0,  3.0, ],
     ];
     _chartData.xLabels =  ["Energy", "Health", "Finance", "Chips", "Oil"];
     _chartData.dataRowsColors = [
       Colors.grey,
       Colors.red,
       Colors.greenAccent,
       Colors.black,
     ];
     _lineChartOptions.useUserProvidedYLabels = false; // use labels below
     //_chartData.yLabels = [
     //  "Ok",
     //  "Higher",
     //  "High",
     //];
   }
  */

  void _chartStateChanger() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If we changed state without calling
      // setState(), then the build method would not be called again,
      // and so nothing would appear to happen.

      /// here we create new random data to illustrate state change
      // defineOptionsAndData();
    });
  }

  @override
  Widget build(BuildContext context) {
    // The (singleton?) window object is available anywhere using ui.
    // From window, we can get  ui.window.devicePixelRatio, and also
    //   ui.Size windowLogicalSize = ui.window.physicalSize / devicePixelRatio
    // Note: Do not use ui.window for any sizing: see
    //       https://github.com/flutter/flutter/issues/11697

    // Use MediaQuery.of(context) for any sizing.
    // note: mediaQueryData can still return 0 size,
    //       but if MediaQuery.of(context) is used, Flutter will guarantee
    //       the build(context) will be called again !
    //        (once non 0 size becomes available)
    // MediaQueryData mediaQueryData = MediaQuery.of(context);

    // note: windowLogicalSize = size of the media (screen) in logical pixels
    // note: same as ui.window.physicalSize / ui.window.devicePixelRatio;
    // ui.Size windowLogicalSize = mediaQueryData.size;

    // devicePixelRatio = number of device pixels for each logical pixel.
    // note: in all known hardware, size(logicalPixel) > size(devicePixel)
    // note: this is also, practically, never needed
    // double logicalToDevicePixelSize = mediaQueryData.devicePixelRatio;

    // textScaleFactor = number of font pixels for each logical pixel.
    // note: with some fontSize, if text scale factor is 1.5
    //       => text is 1.5x larger than the font size.
    // double fontScale = mediaQueryData.textScaleFactor;

    // Let us give the LineChart full width and half of height of window.
    // final ui.Size chartLogicalSize =
    //     new Size(windowLogicalSize.width, windowLogicalSize.height / 2);
    //
    // print(" ### Size: ui.window.physicalSize=${ui.window.physicalSize}, "
    //     "windowLogicalSize = mediaQueryData.size = $windowLogicalSize,"
    //     "chartLogicalSize=$chartLogicalSize");

    defineOptionsAndData();

    LineChartContainer lineChartContainer = new LineChartContainer(
      chartData: _chartData,
      chartOptions: _lineChartOptions,
      xContainerLabelLayoutStrategy: _xContainerLabelLayoutStrategy,
    );

    LineChart lineChart = new LineChart(
      painter: new LineChartPainter(lineChartContainer: lineChartContainer),
      container: lineChartContainer,
    );

    VerticalBarChartContainer verticalBarChartContainer =
    new VerticalBarChartContainer(
      chartData: _chartData,
      chartOptions: _verticalBarChartOptions,
      xContainerLabelLayoutStrategy: _xContainerLabelLayoutStrategy,
    );

    VerticalBarChart verticalBarChart = new VerticalBarChart(
      painter: new VerticalBarChartPainter(
          verticalBarChartContainer: verticalBarChartContainer),
      container: verticalBarChartContainer,
    );

    // [MyHomePage] extends [StatefulWidget].
    // [StatefulWidget] calls build(context) every time setState is called,
    // for instance as done by the _chartStateChanger method above.
    // The Flutter framework has been optimized to make rerunning
    // build methods fast, so that you can just rebuild anything that
    // needs updating rather than having to individually change
    // instances of widgets.
    return new Scaffold(
      body: new Center(
        // Center is a layout widget. It takes a single child and
        // positions it in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children
          // and arranges them vertically. By default, it sizes itself
          // to fit its children horizontally, and tries to be as tall
          // as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you
          // ran "flutter run", or select "Toggle Debug Paint" from the
          // Flutter tool window in IntelliJ) to see the wireframe for
          // each widget.
          //
          // Column has various properties to control how it sizes
          // itself and how it positions its children. Here we use
          // mainAxisAlignment to center the children vertically; the
          // main axis here is the vertical axis because Columns are
          // vertical (the cross axis would be horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // todo-00-last-last : resolve
            new RaisedButton(
              color: Colors.green,
              onPressed: _chartStateChanger,
            ),
            new Text(
              'vvvvvvvv:',
            ),

            // Expanded can be around one child of a Row or a Column
            // (there can be one or more children of those layouts).
            //
            // In this document below, we use | as abbreviation for vertical expansion,
            // <--> for horizontal expansion.
            //
            // "new Expanded()" around one of children of Row, or Column,
            // stretches/pulls the expanded child in the parent's
            // "growing" direction.
            //
            // So:
            //   - Inside Column (e.g. children: [A, B, Expanded (C)]) stretches C in
            //     column's "growing" direction (that is vertically |)
            //     to the fullest available outside height.
            //   - For Row  (e.g. children: [A, B, Expanded (C)]) stretches C in
            //     rows's "growing" direction (that is horizontally <-->)
            //     to the fullest available outside width.
            // The layout of this code, is, structurally like this:
            //   Column (children: [
            //      vvv,
            //      Expanded (
            //        Row  (children: [
            //        >>>, Expanded (Chart), <<<,
            //        ]),
            //      ^^^
            //    ])
            // The outer | expansion, in the Column's middle child
            //   pulls/stretches the row vertically |
            //   BUT also needs explicit
            //   crossAxisAlignment: CrossAxisAlignment.stretch.
            //   The cross alignment stretch carries
            //   the | expansion to all <--> expanded children.
            //  Basically, while "Expanded" only applies stretch in one
            //    direction, another outside "Expanded" with CrossAxisAlignment.stretch
            //    can force the innermost child to be stretched in both directions.
            new Expanded(
              // expansion inside Column pulls contents |
              child: new Row(
                // this stretch carries | expansion to <--> Expanded children
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  new Text('>>>'),
                  // LineChart is CustomPaint:
                  // A widget that provides a canvas on which to draw
                  // during the paint phase.

                  // Row -> Expanded -> Chart expands chart horizontally <-->
                  new Expanded(
                    child: lineChart, // verticalBarChart, lineChart
                  ),
                  // new Text('<<'), // horizontal
                  new Text('<<<<<<'),
                  // tilted labels, all present
                  // new Text('<<<<<<<<<<<'),   // skipped (shows 3 labels, legend present)
                  // new Text('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'), // skipped (shows 2 labels, legend present but text vertical)
                  //  new Text('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'),// labels do overlap, legend NOT present
                ],
              ),
            ),

            new Text('^^^^^^:'),
            // todo-00-last-last : resolve
            new RaisedButton(
              color: Colors.green,
              onPressed: _chartStateChanger,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _chartStateChanger,
        tooltip: 'New Random Data',
        child: new Icon(Icons.add),
      ),
    );
  }
}