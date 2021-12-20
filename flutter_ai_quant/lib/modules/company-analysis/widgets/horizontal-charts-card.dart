import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/chart-data.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/horizontal-bar-label.chart.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class HorizontalChartCard extends StatefulWidget {
  final String title;
  final String description;
  final Map<String, ChartData> data;
  HorizontalChartCard(this.title, this.description, this.data);
  @override
  _HorizontalChartCardState createState() => _HorizontalChartCardState();
}

class _HorizontalChartCardState extends State<HorizontalChartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1100.sp,
      child: Column(
        children: [
          Align(
            child: Text(widget.title, style: TextStyle(color: Colors.green),),
            alignment: Alignment.topLeft,
          ),
          Row(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    height: 500.sp,
                    child: HorizontalBarLabelChart(widget.data),
                  )
              ),
              Expanded(
                child: Text(
                  widget.description,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ), 
                flex: 6,
              ),
            ],
          )
        ],
      ),
    );
  }
}
