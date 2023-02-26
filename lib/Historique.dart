import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:convert';
import 'package:charts_flutter/flutter.dart' as charts;
void main() => runApp(Historique());



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

  Future<List<ChartData>> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.1.2:3000/graphic'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<ChartData> chartData = data.map<ChartData>((datum) {
        return ChartData(datum['x'], datum['y']);
      }).toList();
      return chartData;
    } else {
      throw Exception('Failed to load data from API');
    }
  }


  List<ChartData> _data = [];

  @override
  void initState() {
    super.initState();
    fetchData().then((data) {
      setState(() {
        _data = data;
      });
    });
  }

  charts.Series<ChartData, int> _createSeries() {
    return charts.Series<ChartData, int>(
      id: 'data',
      data: _data,
      domainFn: (ChartData datum, _) => datum.x,
      measureFn: (ChartData datum, _) => datum.y,
    );
  }


  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: charts.LineChart(
              [_createSeries()],
              animate: true,
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData{
  ChartData(this.x,this.y);
  final int x;
  final double y;
}