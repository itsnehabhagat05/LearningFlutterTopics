import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialChartWidget extends StatefulWidget {
  const RadialChartWidget({super.key});

  @override
  State<RadialChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<RadialChartWidget> {

  List<RadialData> chartData = [
    RadialData(yData:90000, xData: 'Neha'),
    RadialData(yData:20000 , xData: 'Akash'),
    RadialData(yData:80000 , xData: 'Riya'),
    RadialData(yData:70000 , xData: 'Ankit'),
    RadialData(yData:30000, xData: 'Priti'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cartesian Charts'),
      backgroundColor:  Colors.deepPurple,
      ),
      body: Container(
        //height: 300,
        margin: EdgeInsets.all(10),
        child: SfCircularChart(
         // backgroundColor: Colors.black,
         // palette: [Colors.green,Colors.blue,Colors.redAccent,Colors.deepPurple,const Color.fromARGB(255, 76, 137, 175)],
          legend: Legend(isVisible: true),
          title: ChartTitle(
            text: 'Sales Data'
          ),
          series:[
            DoughnutSeries <RadialData,String>(
              // trackColor: Colors.grey.shade700,
              // gap: '3%',
              dataSource: chartData,
             // cornerStyle: CornerStyle.bothCurve,
              xValueMapper:((RadialData data,_) => data.xData),
              yValueMapper:((RadialData data,_) => data.yData),
              dataLabelSettings: DataLabelSettings(isVisible: true),
            )
          ]

          ),
          
        )

      );
  }
}

class RadialData {
  final num yData;
  final String xData;
  RadialData({
    required this.yData,
    required this.xData,
  });


}
