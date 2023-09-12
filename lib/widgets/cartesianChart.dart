import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChartWidget extends StatefulWidget {
  const CartesianChartWidget({Key? key}) : super(key: key);

  @override
  State<CartesianChartWidget> createState() => _CartesianChartWidgetState();
}

class _CartesianChartWidgetState extends State<CartesianChartWidget> {
  final List<SalesData> chartData = [
    SalesData(year: 2001 , sales: 20000, color: Colors.purpleAccent),
    SalesData(year: 2002 , sales: 33000, color: Colors.blue),
    SalesData(year: 2003 , sales: 38000, color: Colors.purple),
    SalesData(year: 2004 , sales: 22000, color: Colors.green),
    SalesData(year: 2005 , sales: 50000, color: Colors.amberAccent),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cartesian Charts'),
      ),
      body: Container(
        height: 300,
        margin: EdgeInsets.all(10),
        child: SfCartesianChart(
          legend: Legend(isVisible: true),
          title: ChartTitle(
            text: 'Sales Data'
          ),
          series: <ChartSeries> [
            WaterfallSeries<SalesData,int>(    //Line, Bar, spline,area,coloumn,waterfall
              dashArray: <double>[10,5],
              //color: Colors.purple,
              legendItemText: 'Sales',
              dataSource:chartData , 
              xValueMapper: (SalesData sales,_)=>sales.year,
              yValueMapper:(SalesData sales,_)=>sales.sales ,
              pointColorMapper:(SalesData sales,_)=>sales.color),]
            ),
          
        )

      );
    
  }
}
class SalesData {
  final int year;
  final double sales;
  final Color color ;
  SalesData({
    required this.year,
    required this.sales,
    required this.color,
  });
  
  

}
