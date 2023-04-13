import 'package:bloom/screen/babysitter/table.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';

import 'homepage/home_page.dart';

class FromDataRegistrationBabySitter extends StatefulWidget {
  const FromDataRegistrationBabySitter({Key? key}) : super(key: key);

  @override
  State<FromDataRegistrationBabySitter> createState() => _FromDataRegistrationBabySitter();
}

class _FromDataRegistrationBabySitter extends State<FromDataRegistrationBabySitter> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidate = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20,top: 30,bottom: 40),
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
                    const Center(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Address',
                          hintText: ' Enter a Address',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Telephone Number',
                          hintText: ' Enter a Telephone Number  ',
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          hintText: 'Enter Confirm Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1.0,color: Colors.black54),
                      ),
                      child: Row(
                        children: [

                          TextButton(
                              onPressed: () {
                                _showDatePicker();
                              },
                              child: Text("Date of birth",style: TextStyle(color: Colors.black54),))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const Center(
                      child: TextField(

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'School or Previous school attended',
                          hintText: 'School or Previous school attended',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownDatePicker(
                      locale: "en",
                      inputDecoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          helperText: '',
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))), // optional
                      isDropdownHideUnderline: true, // optional
                      isFormValidator: true, // optional
                      startYear: 1900, // optional
                      endYear: 2020, // optional
                      width: 10, // optional
                      // selectedDay: 14, // optional
                      selectedMonth: 10, // optional
                      selectedYear: 1993, // optional
                      onChangedDay: (value) => print('onChangedDay: $value'),
                      onChangedMonth: (value) => print('onChangedMonth: $value'),
                      onChangedYear: (value) => print('onChangedYear: $value'),
                      //boxDecoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey, width: 1.0)), // optional
                      // showDay: false,// optional
                      // dayFlex: 2,// optional
                      // locale: "zh_CN",// optional
                      // hintDay: 'Day', // optional
                      // hintMonth: 'Month', // optional
                      // hintYear: 'Year', // optional
                      // hintTextStyle: TextStyle(color: Colors.grey), // optional
                    ),

                    const Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'This will be seen by parents',
                            hintText: 'Experience',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'This will be seen by parents',
                            hintText: 'About me',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'This will be seen by parents',
                            hintText: 'Hobbies',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: MaterialButton(
                        color: Colors.black,
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DayTable()));
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.apple,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.g_mobiledata),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));
  }
}
