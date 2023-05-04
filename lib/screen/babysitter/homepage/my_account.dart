

import 'package:bloom/app/preferences/app_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

import '../../widgets/custom_container.dart';
import '../../widgets/custom_dialogs.dart';
import '../../widgets/badge_container.dart';

class BabySitterMyAccount extends StatefulWidget {
  const BabySitterMyAccount({Key? key}) : super(key: key);

  @override
  State<BabySitterMyAccount> createState() => _BabySitterMyAccountState();
}

class _BabySitterMyAccountState extends State<BabySitterMyAccount> {
  String dummyText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat.';
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
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => ParentEditProfile(),));
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
                        AppPreferences.getDisplayName() ?? 'Full name',
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
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Education",
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
                        "Bachelor's of Arts",
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Badges",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 19.0
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          CustomDialogs.selectBadgesDialog(context: context)
                              .show();
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Edit'),
                          ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 24.0,),
                      badgeContainer(image: 'assets/png/badges/caring.png',title: 'Caring'),
                      SizedBox(width: 12.0,),
                      badgeContainer(image: 'assets/png/badges/funny.png',title: 'Funny'),
                      SizedBox(width: 12.0,),
                      badgeContainer(image: 'assets/png/badges/kind.png',title: 'Kind'),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 12.0,),
                      ImageIcon(AssetImage('assets/png/badges/select.png')),
                      Text('Criminal record n3 blank'),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 12.0,),
                      ImageIcon(AssetImage('assets/png/badges/select.png')),
                      Text('CPR & First-Aid Trained'),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 12.0,),
                      ImageIcon(AssetImage('assets/png/badges/select.png')),
                      Text('Non-Smoker'),
                    ],
                  )
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
                    'Availability',
                    style: TextStyle(
                        color:   Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontStyle:  FontStyle.normal,
                        fontSize: 19.0
                    ),
                  ),
                  SizedBox(height: 10.0,),


                  ///Availability Calendar
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                    "Experience : 3 years",
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
                  Text(
                    dummyText,
                    style: TextStyle(
                        color:   Colors.black,
                        fontWeight: FontWeight.w400,
                        fontStyle:  FontStyle.normal,
                        fontSize: 16.0
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
                    "About me",
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
                  Text(
                    dummyText,
                    style: TextStyle(
                        color:   Colors.black,
                        fontWeight: FontWeight.w400,
                        fontStyle:  FontStyle.normal,
                        fontSize: 16.0
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
                    "Hobbies :",
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
                  Text(
                    dummyText,
                    style: TextStyle(
                        color:   Colors.black,
                        fontWeight: FontWeight.w400,
                        fontStyle:  FontStyle.normal,
                        fontSize: 16.0
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0,),
          ],
        ),
      ),
    );
  }

}

