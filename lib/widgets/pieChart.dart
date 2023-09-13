import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {

  List<PieData> chartData = [
    PieData(yData:90000, xData: 'Neha'),
    PieData(yData:20000 , xData: 'Akash'),
    PieData(yData:80000 , xData: 'Riya'),
    PieData(yData:70000 , xData: 'Ankit'),
    PieData(yData:30000, xData: 'Priti'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cartesian Charts'),
      backgroundColor:  Colors.deepPurple,
      ),
      body: Container(
        height: 300,
        margin: EdgeInsets.all(10),
        child: SfCircularChart(
          backgroundColor: Colors.black,
         // palette: [Colors.green,Colors.blue,Colors.redAccent,Colors.deepPurple,const Color.fromARGB(255, 76, 137, 175)],
          legend: Legend(isVisible: true),
          title: ChartTitle(
            text: 'Sales Data'
          ),
          series:[
            PieSeries <PieData,String>(
              
              dataSource: chartData,
              xValueMapper:((PieData data,_) => data.xData),
              yValueMapper:((PieData data,_) => data.yData),
              dataLabelSettings: DataLabelSettings(isVisible: true),
            )
          ]

          ),
          
        )

      );
  }
}

class PieData {
  final num yData;
  final String xData;
  PieData({
    required this.yData,
    required this.xData,
  });


}
