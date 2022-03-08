import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class Dashboard extends StatelessWidget {
  List<Map> _datalist = [
    {
      'Line Stop Type': 'Machine',
      'Total': '115',
      'Closed': '100',
      'Pending': '15'
    },
    {
      'Line Stop Type': 'Man',
      'Total': '60',
      'Closed': '50',
      'Pending': '10'
    },
    {
      'Line Stop Type': 'Material',
      'Total': '175',
      'Closed': '150',
      'Pending': '25'
    },
    {
      'Line Stop Type': 'Method',
      'Total': '58',
      'Closed': '50',
      'Pending': '8'
    },
    {
      'Line Stop Type': 'Quality',
      'Total': '120',
      'Closed': '100',
      'Pending': '20'
    },
    {
      'Line Stop Type': 'Safety',
      'Total': '125',
      'Closed': '100',
      'Pending': '25'
    },
    {
      'Line Stop Type': 'Overall Ticket',
      'Total': '653',
      'Closed': '553',
      'Pending': '100'
    }
  ];
  Map<String, double> dataMap = {
    "Machine": 1,
    "Man": 6,
    "Material": 2,
    "Method": 2,
    "Quality": 2,
    "Safety": 7,
  };
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      sortColumnIndex: _currentSortColumn,
      sortAscending: _isSortAsc,
    );
  }
  List<DataColumn> _createColumns() {
    return [
      const DataColumn(label: Text('Line Stop Type',style: TextStyle(fontWeight: FontWeight.bold),)),
      const DataColumn(label: Text('Total',style: TextStyle(fontWeight: FontWeight.bold),)),
      const DataColumn(label: Text('Closed',style: TextStyle(fontWeight: FontWeight.bold),)),
      const DataColumn(label: Text('Pending',style: TextStyle(fontWeight: FontWeight.bold),))
    ];
  }
  List<DataRow> _createRows() {
    return _datalist
        .map((book) => DataRow(cells: [
      DataCell(Text( ''+ book['Line Stop Type'].toString())),
      DataCell(Text(book['Total'])),
      DataCell(Text(book['Closed'])),
      DataCell(Text(book['Pending']))
    ]))
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DASHBOARD"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
        brightness: Brightness.dark,
      ),
      body: Container(
          child:  SingleChildScrollView(child: Center(child: FittedBox(
              child: Column(

                children:[
                  _createDataTable(),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text('0 to 7 days',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                  PieChart(
                    dataMap: dataMap,
                    centerText: "Total Pending 45",
                    chartRadius: MediaQuery.of(context).size.width / 1.7 ,
                    ringStrokeWidth: 32,
                    chartType: ChartType.ring,
                    legendOptions: const LegendOptions(
                      legendPosition: LegendPosition.top,
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: true
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text('0 to 30 days',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                  PieChart(
                    dataMap: dataMap,
                    centerText: "Total Pending 45",
                    chartRadius: MediaQuery.of(context).size.width / 1.7 ,
                    ringStrokeWidth: 32,
                    chartType: ChartType.ring,
                    legendOptions: const LegendOptions(showLegends: false),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: true
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text('More than 30 days',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                  PieChart(
                    dataMap: dataMap,
                    centerText: "Total Pending 45",
                    chartRadius: MediaQuery.of(context).size.width /1.7,
                    ringStrokeWidth: 32,
                    chartType: ChartType.ring,
                    legendOptions: const LegendOptions(showLegends: false),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: true
                    ),
                  ),
                ],)
          ),
          )  )
      ),
    );
  }
}