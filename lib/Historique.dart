import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:smart_irrigation/capteurSol.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:convert';
import 'package:charts_flutter/flutter.dart' as charts;
void main() => runApp(Historique());
class ChartData {
  final String x;
  final double y;

  ChartData({required this.x, required this.y});

  factory ChartData.fromJson(Map<String, dynamic> json) {
    final label = json['x'] ?? '';
    final value = json['y']?.toDouble() ?? 0.0;
    return ChartData(
      x: label,
      y: value,
    );
  }
}






class Historique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historique',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Historique',style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: MyLayout()),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: chart(),

    );
  }
}
class chart extends StatefulWidget{

  @override
  _chart createState() => _chart();
}


class _chart extends State<chart> {
  List<ChartData> _chartData = [];

  @override
  void initState() {
    super.initState();
    _fetchChartData();
  }

  Future<void> _fetchChartData() async {
    final url = Uri.parse('http://10.99.3.130:3000/graphic');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      final List<ChartData> chartData = jsonData
          .map((dynamic data) => ChartData.fromJson(data))
          .toList();

      setState(() {
        _chartData = chartData;
      });
    } else {
      throw Exception('Error fetching chart data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child:_chartData.isEmpty
                ? Center(child: CircularProgressIndicator())
                : SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <ChartSeries>[
                StepLineSeries<ChartData, String>(
                  dataSource: _chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                ),
              ],
            ),

          ),

        ],
      ),
    );
  }
}

