import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage/home_page.dart';

class DayTable extends StatefulWidget {
  const DayTable({Key? key}) : super(key: key);

  @override
  State<DayTable> createState() => _DayTableState();
}

class _DayTableState extends State<DayTable> {
  bool _isChecked = false;

  void onCheckBoxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  void _onFinishButtonPressed() {
    if (_isChecked) {
      // Do something when the "Finish" button is pressed and the checkbox is selected
      print("Finish button pressed and checkbox is selected");
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => babySitterHomePage()));
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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(["Times", "Monday", "Tuesday","Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]),
                     buildRow(["Sun - 9 am", " ", '' , "", "", "", "", ""]),
                    buildRow(["Sun - 9 am", " ", '' , "", "", "", "", ""]),
                    buildRow(["Sun - 9 am", " ", '' , "", "", "", "", ""]),
                    buildRow(["Sun - 9 am", " ", '' , "", "", "", "", ""]),
                    buildRow(["Sun - 9 am", " ", '' , "", "", "", "", ""]),




                  ],
                ),
              ),
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
                    // Do something when the "Back" button is pressed

                    print("Back button pressed");
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

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    children: cells.map((cell){
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 18,
      );

      return Padding(padding: EdgeInsets.all(8),
      child: Center(child: Text(cell))
      );

    }).toList()
  );
}


