

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

import '../../../app/preferences/app_preferences.dart';
import '../../widgets/custom_container.dart';
import '../edit_profile.dart';

class ParentMyAccount extends StatefulWidget {
  const ParentMyAccount({Key? key}) : super(key: key);

  @override
  State<ParentMyAccount> createState() => _ParentMyAccountState();
}

class _ParentMyAccountState extends State<ParentMyAccount> {

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
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 8/6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter:
                    ColorFilter.mode(Colors.black.withOpacity(0.6),
                        BlendMode.dstATop),
                    image: NetworkImage(
                        'https://cdn.babysits.com/content/en/article/top-tips-to-write-a-great-babysits-profile-20-1654184172.jpg'),
                    fit: BoxFit.fill,
                  ),

                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 10, left: 20.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.shutterstock.com/image-photo/babysitter-black-woman-read-book-260nw-2142840747.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),

                        Positioned(
                            left: 100.0,
                            child: Container(
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ParentEditProfile(),));
                                },
                                icon: Icon(Icons.edit, color: Colors.green, size: 20.0,),
                              ),
                            )
                        )
                      ],
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBackgroundText(
                            'Bloom Buddies Babysitting\n${AppPreferences.getDisplayName()}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                            backgroundColor: Colors.amber,
                          ),
                        ],
                      )
                    ),
                    /*Expanded(
                      child:

                      Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.indigo,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            fontWeight: FontWeight.w900, fontSize: 24.0),),
                    )*/
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0,),

            Container(
              margin: EdgeInsets.only(right: 5.0),
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () {

                },
                child: Text('Edit my Information'),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Bio",
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
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Full Name",
                          style: TextStyle(
                              color:   Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      Text(
                        AppPreferences.getDisplayName() ?? 'Full Name',
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Address",
                          style: TextStyle(
                              color:   Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      Text(
                        "Dehradun,\nUttarakhand,\nIndia",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Mobile No.",
                          style: TextStyle(
                              color:   Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      Text(
                        "+91 9998887777",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color:   Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      Text(
                        "vipin@pearlorganisation.com",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Child(ren)",
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
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          "Number of Children",
                          style: TextStyle(
                              color:   Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Age of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Name of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Birthday of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Age of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Name of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Birthday of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Age of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Name of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Birthday of child",
                                style: TextStyle(
                                    color:   Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                            Text(
                              " : ",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color:   Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'Baby-Sitting Schedule',
                    style: TextStyle(
                        color:   Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontStyle:  FontStyle.normal,
                        fontSize: 19.0
                    ),
                  ),
                  SizedBox(height: 10.0,),
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
                  SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          "Total hours per Week",
                          style: TextStyle(
                              color:   Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                      ),
                      SizedBox(width: 16.0,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.0,),
          ],
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
