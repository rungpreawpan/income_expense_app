import 'package:flutter/material.dart';
import 'package:income_expense/model/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatefulWidget {
  final List<PieChartData> dataList;

  const PieChart({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: Legend(isVisible: true),
      series: <CircularSeries>[
        PieSeries<PieChartData, String>(
          dataSource: widget.dataList,
          legendIconType: LegendIconType.circle,
          xValueMapper: (PieChartData data, _) => data.x,
          yValueMapper: (PieChartData data, _) => data.y,
        ),
      ],
    );
  }
}
