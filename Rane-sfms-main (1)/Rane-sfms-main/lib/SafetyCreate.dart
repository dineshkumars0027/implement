import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SafetyCreate extends StatelessWidget {
  const SafetyCreate({Key? key}) : super(key: key);


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
  String dropdownValue5 = '';
  String dropdownValue6 = '';
  String dropdownValue7 = '';
  String dropdownValue8 = '';
  String textvalue1 = "";
  String textvalue2 = "";

  String holder1 = '' ;
  String holder2 = '' ;
  String holder3 = '' ;
  String holder4 = '' ;
  String holder5 = '' ;
  String holder6 = '' ;
  String holder7 = '' ;
  String holder8 = '' ;
  String holder9 = '' ;
  String holder10 = '' ;




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
  void getDropDownItem3(){

    setState(() {
      holder3 = dropdownValue3 ;
    });
  }
  void getDropDownItem4(){

    setState(() {
      holder4 = dropdownValue4 ;
    });
  }
  void getDropDownItem5(){

    setState(() {
      holder5 = dropdownValue5 ;
    });
  }
  void getDropDownItem6(){

    setState(() {
      holder6 = dropdownValue6 ;
    });
  }
  void getDropDownItem7(){

    setState(() {
      holder7 = dropdownValue7 ;
    });
  }
  void getDropDownItem8(){

    setState(() {
      holder8 = dropdownValue8;
    });
  }
  void TextItem1(){

    setState(() {
      holder9 = textvalue1;
    });
  }
  void TextItem2(){

    setState(() {
      holder10 = textvalue2;
    });
  }


  final formKey = GlobalKey<FormState>();

  final List<String> list1 = ['Developer', 'Designer', 'Consultant', 'Student'];
  List<String> list2 = [""];
  List<String> list3 = [""];
  List<String> list4 = [""];
  List<String> list5 = [""];
  List<String> list6 = [""];
  List<String> list7 = [""];
  List<String> list8 =[''];
  final
  ctrl1 = TextEditingController(),
      ctrl2= TextEditingController(),
      ctrl3 = TextEditingController(),
      ctrl4 = TextEditingController(),
      ctrl5 = TextEditingController(),
      ctrl6 = TextEditingController(),
      ctrl7 = TextEditingController(),
      ctrl8 = TextEditingController();

  @override
  void dispose() {
    ctrl1.dispose();
    ctrl2.dispose();
    ctrl3.dispose();
    ctrl4.dispose();
    ctrl5.dispose();
    ctrl6.dispose();
    ctrl7.dispose();
    ctrl8.dispose();


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

                const Text('Shop *', style: _labelStyle),
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



                const Text('Module *', style: _labelStyle),
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
                      list3=['sample5', 'sample6', 'sample7', 'sample8'];

                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),



                const Text('Line *', style: _labelStyle),
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
                      list4=['sample9', 'sample10', 'sample11', 'sample12'];
                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),




                const Text('Type *', style: _labelStyle),
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
                      list5=['sample13', 'sample14', 'sample15', 'sample16'];
                    }

                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),



                const Text('Service *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select',
                    items: list5,
                    controller: ctrl5,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue5 = data;
                      });
                      list6=['sample17', 'sample18', 'sample19', 'sample20'];
                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),




                // dropdown having search field
                const Text('Machine Name *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select',
                    items: list6,
                    controller: ctrl6,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue6 = data;
                      });
                      list7=['sample21', 'sample22', 'sample23', 'sample24'];
                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),



                const Text('Reason Code *', style: _labelStyle),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select',
                    items: list7,
                    controller: ctrl7,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue7 = data;
                      });
                      list8=['sample25','sample26'];
                    }
                ),
                const SizedBox(height: 24),
                const Divider(height: 0),
                const SizedBox(height: 24),



                const Text(
                  'Reason Type *',
                  style: _labelStyle,
                ),
                const SizedBox(height: 8),
                CustomDropdown(
                    hintText: 'Select job role',
                    items: list8,
                    controller: ctrl8,
                    excludeSelected: false,
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue8 = data;
                      });

                    }
                ),
                const SizedBox(height: 16),
                const Divider(height: 0),
                const SizedBox(height: 24),



                Text('Details *', style: _labelStyle),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Details',


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



                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {


                      if (formKey.currentState!.validate()) {
                        print(dropdownValue1);
                        print(dropdownValue2);
                        print(dropdownValue3);
                        print(dropdownValue4);
                        print(dropdownValue5);
                        print(dropdownValue6);
                        print(dropdownValue7);
                        print(dropdownValue8);
                        print(textvalue2);
                        print(DateTime.now().millisecondsSinceEpoch);
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