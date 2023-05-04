import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_container.dart';
import 'homepage/home_page.dart';

class DayTable extends StatefulWidget {
  const DayTable({Key? key}) : super(key: key);

  @override
  State<DayTable> createState() => _DayTableState();
}

class _DayTableState extends State<DayTable> {
  bool _isChecked = false;
  late Widget availabilityChart;
  late bool _isLoading;



  void init() async {
    _isLoading = true;
    availabilityChart = Padding(
      padding: const EdgeInsets.all(8.0),
      child: await Container(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: Column(
                  children: [
                    headerContainer(day: 'Time | Day', width: double.infinity),
                    SizedBox(height: 1,),
                    dayContainer(day: '5am-9am'),
                    SizedBox(height: 1,),
                    dayContainer(day: '9am-10am'),
                    SizedBox(height: 1,),
                    dayContainer(day: '10am-11am'),
                    SizedBox(height: 1,),
                    dayContainer(day: '11am-12pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '12pm-1pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '1pm-2pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '2pm-3pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '3pm-4pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '4pm-5pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '5pm-6pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '6pm-7pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '7pm-8pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '8pm-9pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '9pm-10pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '10pm-11pm'),
                    SizedBox(height: 1,),
                    dayContainer(day: '11pm-12am'),
                    SizedBox(height: 1,),
                    dayContainer(day: '12am-5am'),
                  ],
                ),
              ),
              SizedBox(width: 1,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            headerContainer(day: 'Monday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                        SizedBox(width: 1,),
                        Column(
                          children: [
                            headerContainer(day: 'Tuesday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                        SizedBox(width: 1,),
                        Column(
                          children: [
                            headerContainer(day: 'Wednesday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                        SizedBox(width: 1,),
                        Column(
                          children: [
                            headerContainer(day: 'Thursday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                        SizedBox(width: 1,),
                        Column(
                          children: [
                            headerContainer(day: 'Friday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                        SizedBox(width: 1,),
                        Column(
                          children: [
                            headerContainer(day: 'Saturday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                        SizedBox(width: 1,),
                        Column(
                          children: [
                            headerContainer(day: 'Sunday'),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                            CustomBox(),
                            SizedBox(height: 1,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  void onCheckBoxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  void _onFinishButtonPressed() {
    if (_isChecked) {
      // Do something when the "Finish" button is pressed and the checkbox is selected
      print("Finish button pressed and checkbox is selected");
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (context) => BabySitterHomePage()), (route) => false,);
    } else {
      // Show an error message if the checkbox is not selected
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text("Please accept the terms and conditions."),
            actions: <Widget>[
              ElevatedButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20, width: MediaQuery.of(context).size.width,),
              Text("Your availability for babysitting", style: TextStyle(letterSpacing: 1, fontSize: 17, fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text("Click and drag to indicate you are available", style: TextStyle(color: Colors.blue),),
              SizedBox(height: 10,),

            ///Availability Calendar
            _isLoading? loading(): availabilityChart,
              Text("Your schedule is very important and you will\nreceive reservation according to your inputted\n availablity", style: TextStyle(color: Colors.blue),),
          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: onCheckBoxChanged,
              ),
              Text("I accept the terms and conditions"),
            ],
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(

                  child: Text("Back", style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, //background color of button
                  side: BorderSide(width:2, color:Colors.black), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10) //content padding inside button
              ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Text("Finish",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, //background color of button
                      side: BorderSide(width:2, color:Colors.black), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10) //content padding inside button
                  ),
                  onPressed: _onFinishButtonPressed,
                ),
              ],
            ),
          ),
  ]
      ),
        ),
    )
    );
  }
}

Widget loading() {
  return Container(
    alignment: Alignment.center,
    height: 100.0,
    width: 100.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: CircularProgressIndicator(color: Colors.blue,),
  );
}
