import 'dart:convert';
import 'package:flutter/material.dart';
import'package:flutter/services.dart' as rootBundle;
void main() => runApp(const LineStoppageStop());

class LineStoppageStop extends StatelessWidget {
  static const String title = 'Card Example';

  const LineStoppageStop({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: const MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) => Scaffold(

    body: FutureBuilder(future: ReadJsonData(),
      builder: (context,data){
      if(data.hasError){
        return Center(child: Text("${data.error}"));
      }else if (data.hasData){
        var items =data.data as List<LineStoppageDetails>;
        return ListView.builder(
            itemCount: items ==null? 0: items.length,
            itemBuilder: (context,index){
          return Card(
            shadowColor: Colors.red,
            elevation: 10,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              height: 240,
              decoration: const BoxDecoration(
                  color:  Color(0xff175EAB)
              ),
              padding: const EdgeInsets.all(16),
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].module.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].type.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].machineName.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].employee.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].details.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].shop.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].line.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].services.toString()),),
                  Padding(padding: const EdgeInsets.only(left: 8,right: 8),child: Text(items[index].reasonCode.toString()),),

                ]
              ),
            ),
          );


        }
        );
      }else{
        return Center(child: CircularProgressIndicator(),);
      }
      }
    )
  );
}
class LineStoppageDetails {

  late final String module;
  late final String type;
  late final String machineName;
  late final String employee;
  late final String details;
  late final String shop;
  late final String line;
  late final String services;
  late final String reasonCode;

  LineStoppageDetails({

    required this.module,
    required this.type,
    required this.machineName,
    required this.employee,
    required this.details,
    required this.shop,
    required this.line,
    required this.services,
    required this.reasonCode
  });

  LineStoppageDetails.fromJson(Map<String, dynamic> json)
  {

    module = json['module'];
    type = json['type'];
    machineName = json['machineName'];
    employee = json['employee'];
    details = json['details'];
    shop = json['shop'];
    line = json['line'];
    services = json['services'];
    reasonCode = json['reasonCode'];
  }
}
Future<List<LineStoppageDetails>>ReadJsonData() async{
final jsondata = await rootBundle.rootBundle.loadString('json/Line-Stoppage.json');
final list = json.decode(jsondata) as List<dynamic>;
print(list);
return list.map((e) => LineStoppageDetails.fromJson(e)).toList();
}