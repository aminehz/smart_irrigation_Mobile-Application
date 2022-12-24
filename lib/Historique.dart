import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
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
      child: Chart(),

    );
  }
}


class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ChartData>
    chartData=[


    ];
    for(var i=0;i<5;i++){
      chartData.add(ChartData(i,i+0));
    }



    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: SfCartesianChart(
                    title: ChartTitle(text:"Electrovanne 1"),
                    legend: Legend(isVisible: false),
                   series:<ChartSeries>[
                     AreaSeries<ChartData,int>(
                         dataSource: chartData,
                         xValueMapper: (ChartData data,_)=>data.x,
                         yValueMapper: (ChartData data,_)=>data.y,
                          color: Colors.lightBlueAccent.withOpacity(0.5),
                          borderColor: Colors.grey,
                           borderWidth: 2,

                       ),

                   ],

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
