import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SafetyStop extends StatelessWidget {
  const SafetyStop({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Line Stoppage Form',
      home: Home(),
    );
  }
}

const _labelStyle = TextStyle(fontWeight: FontWeight.w600);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue1 = '';
  String dropdownValue2 = '';
  String dropdownValue3 = '';
  String dropdownValue4 = '';
  String textvalue1 = "";
  String textvalue2 = "";



  String holder1 = '' ;
  String holder2 = '' ;
  String holder3 = '' ;
  String holder4 = '' ;
  String holder5 = '' ;
  String holder6 = '' ;


  void getDropDownItem1(){

    setState(() {
      holder1 = dropdownValue1 ;
    });
  }
  void getDropDownItem2(){

    setState(() {
      holder2 = dropdownValue2 ;
    });
  }
  void TextItem1(){

    setState(() {
      holder1 = textvalue1 ;
    });
  }
  void getDropDownItem3(){

    setState(() {
      holder3 = dropdownValue3 ;
    });
  }

  void TextItem2(){

    setState(() {
      holder1 = textvalue2 ;
    });
  }

  void getDropDownItem4(){

    setState(() {
      holder4 = dropdownValue4 ;
    });
  }

  final formKey = GlobalKey<FormState>();
  List<String> list1 = ['Developer', 'Designer', 'Consultant', 'Student'];
  List<String> list2 = [''];
  List<String> list3 = [''];
  List<String> list4 = [''];

  final ctrl1 = TextEditingController(),
      ctrl2= TextEditingController(),
      ctrl3 = TextEditingController(),
      ctrl4 = TextEditingController();


  @override
  void dispose() {
    ctrl1.dispose();
    ctrl2.dispose();
    ctrl3.dispose();
    ctrl4.dispose();


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        elevation: .25,
        title: const Text(
          'Line Stoppage-Create',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Analysis *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select',
                    items: list1,
                    controller: ctrl1,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue1 = data;
                      });
                      list2=['sample1', 'sample2', 'sample3', 'sample4'];
                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),



                const Text('Closure *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select ',
                    items: list2,
                    controller: ctrl2,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue2 = data;
                      });
                      list3 = ['sample5', 'sample6', 'sample7', 'sample8'];
                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),


                Text('Reason *', style: _labelStyle),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Reason',
                      ),
                      onChanged: (data) {
                        setState(() {
                          textvalue1 = data;

                        });
                      }

                  ),
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),



                const Text('Phenomena *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select',
                    items: list3,
                    controller: ctrl3,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue3 = data;
                      });
                      list4 = ['sample9', 'sample10', 'sample11', 'sample12'];

                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),


                Text('Spares *', style: _labelStyle),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Spares',


                      ),
                      onChanged: (data) {
                        setState(() {
                          textvalue2 = data;

                        });
                      }
                  ),
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),




                const Text('Loto *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select',
                    items: list4,
                    controller: ctrl4,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue4 = data;
                      });
                    }

                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),




                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print(dropdownValue1);
                      print(dropdownValue2);
                      print(dropdownValue3);
                      print(dropdownValue4);
                      print(textvalue1);
                      print(textvalue2);


                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                    },

                    child: const Text(
                      'Submit',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}