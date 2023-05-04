
import 'package:flutter/material.dart';
import 'package:from_to_time_picker/from_to_time_picker.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../widgets/custom_appbar.dart';
import '../widgets/custom_container.dart';
import 'homepage/home_page.dart';

class FromDataRegistrationParent extends StatefulWidget {
  const FromDataRegistrationParent({Key? key}) : super(key: key);

  @override
  State<FromDataRegistrationParent> createState() => _FromDataRegistrationParentState();
}

class _FromDataRegistrationParentState extends State<FromDataRegistrationParent> {

  Map<String, String> time_table = {
    "mondayStartTime" : 'Select',
    "mondayEndTime" : 'Select',
    "tuesdayStartTime" : 'Select',
    "tuesdayEndTime" : 'Select',
    "wednesdayStartTime" : 'Select',
    "wednesdayEndTime" : 'Select',
    "thursdayStartTime" : 'Select',
    "thursdayEndTime" : 'Select',
    "fridayStartTime" : 'Select',
    "fridayEndTime" : 'Select',
    "saturdayStartTime" : 'Select',
    "saturdayEndTime" : 'Select',
    "sundayStartTime" : 'Select',
    "sundayEndTime" : 'Select',
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ParentHomePage(),), (route) => false);
        return true;
      },
      child: Scaffold(
        appBar: CustomAppBar.appBar(title: 'Personal Information'),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                              hintText: ' Enter a Address',
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Telephone Number',
                              hintText: ' Enter a Telephone Number  ',
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const SizedBox(height: 20,),

                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Number of Children',
                              hintText: 'Enter number of children',
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Age of Children',
                              hintText: 'Enter age of Children',
                            ),
                          ),
                          const SizedBox(height: 20,),
                          ///BabySitting Schedule
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.black
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        headerContainer(day: 'Day', width: double.infinity),
                                        dayContainer(day: 'Monday'),
                                        Divider(thickness: 1,height: 1),
                                        dayContainer(day: 'Tuesday'),
                                        Divider(thickness: 1,height: 1),
                                        dayContainer(day: 'Wednesday'),
                                        Divider(thickness: 1,height: 1),
                                        dayContainer(day: 'Thursday'),
                                        Divider(thickness: 1,height: 1),
                                        dayContainer(day: 'Friday'),
                                        Divider(thickness: 1,height: 1),
                                        dayContainer(day: 'Saturday'),
                                        Divider(thickness: 1,height: 1),
                                        dayContainer(day: 'Sunday'),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          child: Column(
                                            children: [
                                              headerContainer(day: 'Start', width: 100.0),

                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'mondayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['mondayStartTime']!),
                                                ),
                                              ),
                                              Divider(thickness: 1,height: 1),
                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'tuesdayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['tuesdayStartTime']!),
                                                ),
                                              ),
                                              Divider(thickness: 1,height: 1),
                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'wednesdayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['wednesdayStartTime']!),
                                                ),
                                              ),
                                              Divider(thickness: 1,height: 1),
                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'thursdayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['thursdayStartTime']!),
                                                ),
                                              ),
                                              Divider(thickness: 1,height: 1),
                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'fridayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['fridayStartTime']!),
                                                ),
                                              ),
                                              Divider(thickness: 1,height: 1),
                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'saturdayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['saturdayStartTime']!),
                                                ),
                                              ),
                                              Divider(thickness: 1,height: 1),
                                              GestureDetector(
                                                onTap: () {
                                                  showTimeDialog(dayTime: 'sundayStartTime');
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  width: 100.0,
                                                  height: 30,
                                                  alignment: Alignment.center,
                                                  child: Text(time_table['sundayStartTime']!),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            headerContainer(day: 'Finish', width: 100.0),

                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'mondayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['mondayEndTime']!),
                                              ),
                                            ),
                                            Divider(thickness: 1,height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'tuesdayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['tuesdayEndTime']!),
                                              ),
                                            ),
                                            Divider(thickness: 1,height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'wednesdayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['wednesdayEndTime']!),
                                              ),
                                            ),
                                            Divider(thickness: 1,height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'thursdayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['thursdayEndTime']!),
                                              ),
                                            ),
                                            Divider(thickness: 1,height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'fridayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['fridayEndTime']!),
                                              ),
                                            ),
                                            Divider(thickness: 1,height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'saturdayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['saturdayEndTime']!),
                                              ),
                                            ),
                                            Divider(thickness: 1,height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                showTimeDialog(dayTime: 'sundayEndTime');
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100.0,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text(time_table['sundayEndTime']!),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: MaterialButton(
                              color: Colors.black,
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                                builder: (context) => ParentHomePage()), (route) => false,);
                              },
                              child: const Text(
                                'Finish',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 60,),

                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showTimeDialog({required String dayTime}) async {

    int oldTimeHour;
    int oldTimeMinute;

    if(time_table[dayTime] != 'Select'){
      oldTimeHour = int.parse(time_table[dayTime]?.substring(0, 2)??'0');
      oldTimeMinute = int.parse(time_table[dayTime]?.substring(3, 5)??'0');
    }else{
      oldTimeHour = 6;
      oldTimeMinute = 0;
    }

    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: oldTimeHour, minute: oldTimeMinute),
        builder: (context, childWidget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                // Using 24-Hour format
                  alwaysUse24HourFormat: false),
              // If you want 12-Hour format, just change alwaysUse24HourFormat to false or remove all the builder argument
              child: childWidget!);
        }
    );

    int hour;
    int minute;
    bool am = true;
    String time;

    if(newTime != null){
      hour = newTime.hour;
      if(hour > 11 || hour != 0){
        switch(hour) {
          case 12 :
            {
              am = false;
              break;
            }
          case 13 :
            {
              hour = 1;
              am = false;
              break;
            }
          case 14 :
            {
              hour = 2;
              am = false;
              break;
            }
          case 15 :
            {
              hour = 3;
              am = false;
              break;
            }
          case 16 :
            {
              hour = 4;
              am = false;
              break;
            }
          case 17 :
            {
              hour = 5;
              am = false;
              break;
            }
          case 18 :
            {
              hour = 6;
              am = false;
              break;
            }
          case 19 :
            {
              hour = 7;
              am = false;
              break;
            }
          case 20 :
            {
              hour = 8;
              am = false;
              break;
            }
          case 21 :
            {
              hour = 9;
              am = false;
              break;
            }
          case 22 :
            {
              hour = 10;
              am = false;
              break;
            }
          case 23 :
            {
              hour = 11;
              am = false;
              break;
            }
          case 00 :
            {
              hour = 12;
              am = true;
              break;
            }
        }
      }

      minute = newTime.minute;
      time = '${hour<10? '0${hour}':hour}:${minute<10? '0${minute}':minute} ${am? 'AM':'PM'}';
    }else{
      time = 'Select';
    }

    switch(dayTime) {
      case 'mondayStartTime' : {
        setState(() {
          time_table['mondayStartTime'] = time;
          //time_table['mondayEndTime'] = '${to.hour}:${to.minute}';
        });
        break;
      }
      case 'mondayEndTime' : {
        setState(() {
          //time_table['mondayStartTime'] = '${from.hour}:${from.minute}';
          time_table['mondayEndTime'] = time;
        });
        break;
      }
      case 'tuesdayStartTime' : {
        setState(() {
          time_table['tuesdayStartTime'] = time;
          //time_table['tuesdayEndTime'] = '${to.hour}:${to.minute}';
          //print(from);

        });
        break;
      }
      case 'tuesdayEndTime' : {
        setState(() {
          //time_table['tuesdayStartTime'] = '${from.hour}:${from.minute}';
          time_table['tuesdayEndTime'] = time;
          //print(from);

        });
        break;
      }
      case 'wednesdayStartTime' : {
        setState(() {
          time_table['wednesdayStartTime'] = time;
          //time_table['wednesdayEndTime'] = '${to.hour}:${to.minute}';
        });
        break;
      }
      case 'wednesdayEndTime' : {
        setState(() {
          //time_table['wednesdayStartTime'] = '${from.hour}:${from.minute}';
          time_table['wednesdayEndTime'] = time;
        });
        break;
      }
      case 'thursdayStartTime' : {
        setState(() {
          time_table['thursdayStartTime'] = time;
          //time_table['thursdayEndTime'] = '${to.hour}:${to.minute}';
        });
        break;
      }
      case 'thursdayEndTime' : {
        setState(() {
          //time_table['thursdayStartTime'] = '${from.hour}:${from.minute}';
          time_table['thursdayEndTime'] = time;
        });
        break;
      }
      case 'fridayStartTime' : {
        setState(() {
          time_table['fridayStartTime'] = time;
          //time_table['fridayEndTime'] = '${to.hour}:${to.minute}';
        });
        break;
      }
      case 'fridayEndTime' : {
        setState(() {
          //time_table['fridayStartTime'] = '${from.hour}:${from.minute}';
          time_table['fridayEndTime'] = time;
        });
        break;
      }
      case 'saturdayStartTime' : {
        setState(() {
          time_table['saturdayStartTime'] = time;
          //time_table['saturdayEndTime'] = '${to.hour}:${to.minute}';
        });
        break;
      }
      case 'saturdayEndTime' : {
        setState(() {
          //time_table['saturdayStartTime'] = '${from.hour}:${from.minute}';
          time_table['saturdayEndTime'] = time;
        });
        break;
      }
      case 'sundayStartTime' : {
        setState(() {
          time_table['sundayStartTime'] = time;
          //time_table['sundayEndTime'] = '${to.hour}:${to.minute}';
        });
        break;
      }
      case 'sundayEndTime' : {
        setState(() {
          //time_table['sundayStartTime'] = '${from.hour<10? '0${from.hour}':from.hour}:${from.minute<10? '0${from.minute}':from.minute} ${from.hour<12? 'AM':'PM'}';
          time_table['sundayEndTime'] = time;
        });
        break;
      }
    }
  }
}
