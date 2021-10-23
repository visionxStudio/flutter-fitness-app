import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularHomeChart extends StatefulWidget {
  const CircularHomeChart({Key? key}) : super(key: key);

  @override
  _CircularHomeChartState createState() => _CircularHomeChartState();
}

class _CircularHomeChartState extends State<CircularHomeChart> {
  late List<UserGymData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    super.initState();

    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(
      enable: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCircularChart(
        legend: Legend(isVisible: false),
        tooltipBehavior: _tooltipBehavior,
        series: <CircularSeries>[
          RadialBarSeries<UserGymData, String>(
            cornerStyle: CornerStyle.bothCurve,
            gap: '2',
            animationDuration: 3000,
            dataSource: _chartData,
            xValueMapper: (UserGymData data, _) => data.x,
            yValueMapper: (UserGymData data, _) => data.y,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            enableTooltip: true,
            maximumValue: 1000,
          )
        ],
      ),
    );
  }

  List<UserGymData> getChartData() {
    final List<UserGymData> userData = [
      UserGymData("a", 690),
      UserGymData("c", 600),
      UserGymData("b", 900),
    ];
    return userData;
  }
}

class UserGymData {
  String x;
  int y;
  UserGymData(this.x, this.y);
}
