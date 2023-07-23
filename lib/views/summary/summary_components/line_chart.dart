import 'package:flutter/material.dart';
import 'package:income_expense/model/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  final List<ColumnChartData> dataList;

  const LineChart({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      palette: const <Color>[
        Colors.green,
        Colors.red,
      ],
      series: <ChartSeries>[
        ColumnSeries<ColumnChartData, String>(
          dataSource: widget.dataList,
          xValueMapper: (ColumnChartData data, _) => data.x,
          yValueMapper: (ColumnChartData data, _) => data.y1,
        ),
        ColumnSeries<ColumnChartData, String>(
          dataSource: widget.dataList,
          xValueMapper: (ColumnChartData data, _) => data.x,
          yValueMapper: (ColumnChartData data, _) => data.y2,
        ),
      ],
    );
  }
}
