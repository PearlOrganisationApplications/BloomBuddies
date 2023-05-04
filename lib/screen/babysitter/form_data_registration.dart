import 'package:bloom/screen/babysitter/table.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_appbar.dart';
import 'homepage/home_page.dart';

class FormDataRegistrationBabySitter extends StatefulWidget {
  const FormDataRegistrationBabySitter({Key? key}) : super(key: key);

  @override
  State<FormDataRegistrationBabySitter> createState() => _FormDataRegistrationBabySitter();
}

class _FormDataRegistrationBabySitter extends State<FormDataRegistrationBabySitter> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String dob = 'Date of Birth';
  final List<String> items = [
    'Select',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    'More than 10 years',
  ];
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BabySitterHomePage(),), (route) => false);
        return true;
      },
      child: Scaffold(
        appBar: CustomAppBar.appBar(title: 'Personal Information'),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0,),
                  Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Address',
                          hintText: ' Enter a Address',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Telephone Number',
                          hintText: ' Enter a Telephone Number  ',
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
                        child: TextButton(
                            onPressed: () {
                              _showDatePicker();
                            },
                            child: Text(dob,style: TextStyle(color: Colors.black54),)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const Center(
                        child: TextField(

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'School Name',
                            hintText: 'School or Previous school attended',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Years of Experience'),
                          Container(
                            padding: EdgeInsets.only(left: 4.0),
                            width: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                hint: Text(
                                  'Select',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).hintColor,
                                  ),
                                ),
                                items: items
                                    .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                                    .toList(),
                                value: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value as String;
                                  });
                                },
                                buttonStyleData: const ButtonStyleData(
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
/*
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
*/
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Experience",
                            style: TextStyle(
                                color:   Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle:  FontStyle.normal,
                                fontSize: 19.0
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            maxLines: 12,
                            minLines: 6,
                            textAlign: TextAlign.justify,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Write about your babysitting experience, what do you like the most about babysitting?\nWhat fun activities do you like to do with children?\nIn which city did you babysit?',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "About Me",
                            style: TextStyle(
                                color:   Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle:  FontStyle.normal,
                                fontSize: 19.0
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            maxLines: 12,
                            minLines: 6,
                            textAlign: TextAlign.justify,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Write about yourself, your personality and your passions.\n\nHow did you learn english?\nWhich countries abroad have you lived in?',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hobbies",
                            style: TextStyle(
                                color:   Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle:  FontStyle.normal,
                                fontSize: 19.0
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            maxLines: 12,
                            minLines: 6,
                            textAlign: TextAlign.justify,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Describe your hobbies, how do you spend your free time?\nWhat kinds of places do you like to visit?\n\nDo you like culture?',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  )),
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
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showDatePicker() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030)
    );
    setState(() {
      dob = date != null?DateFormat('dd MMMM yyyy').format(date!): 'Date of Birth';
    });
  }
}
