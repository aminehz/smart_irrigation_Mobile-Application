import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:smart_irrigation/capteurSol.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:convert';
import 'package:charts_flutter/flutter.dart' as charts;
void main() => runApp(Historique());

class ChartData{
  final double x;
  final double y;
  ChartData({required this.x, required this.y});
}

Future<List<ChartData>> fetchChartData() async {
  final response = await http.get(Uri.parse('http://192.168.1.2:3000/graphic'));
  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    final List<ChartData> chartDataList = data.map((item) => ChartData(x: (item['x']).toDouble(), y: (item['y']).toDouble())).toList();
    return chartDataList;

  } else {
    throw Exception('Failed to load data from API');
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
  late Future<List<ChartData>> _futureChartData;
  @override
  void initState() {
    super.initState();
    _futureChartData = fetchChartData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child:FutureBuilder<List<ChartData>>(
              future: _futureChartData,
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return SfCartesianChart(
                    series: <ChartSeries>[
                      LineSeries<ChartData,double>(
                        dataSource: snapshot.data!,
                        xValueMapper:(ChartData data,_)=> data.x,
                        yValueMapper: (ChartData data,_) => data.y,
                      ),
                    ],
                  );

                } else if (snapshot.hasError){
                  return Text('Error fetching chart data: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),

          ),

        ],
      ),
    );
  }
}

