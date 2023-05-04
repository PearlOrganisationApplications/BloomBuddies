
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../widgets/badge_container.dart';
import '../../widgets/custom_container.dart';


class MyBloomBuddie extends StatefulWidget {
  const MyBloomBuddie({Key? key}) : super(key: key);

  @override
  State<MyBloomBuddie> createState() => _MyBloomBuddieState();
}

class _MyBloomBuddieState extends State<MyBloomBuddie> {

  String dummyText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat.';

  bool hasBabySitter = false;
  DateTime _currentDate = DateTime(2019, 2, 3);
  DateTime _currentDate2 = DateTime(2019, 2, 3);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
  DateTime _targetDateTime = DateTime(2019, 2, 3);
  late CalendarCarousel myCalendarCarousel;
  late Widget availabilityChart;
  late bool _isLoading;



  void init() async {
    _isLoading = true;
    myCalendarCarousel = await CalendarCarousel<Event>(
      scrollDirection: Axis.horizontal,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate = date);
      },
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      customDayBuilder: (

          /// you can provide your own build function to make custom day containers
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,) {
        /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
        /// This way you can build custom containers for specific days only, leaving rest as default.

        // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
        if (day.day == 15) {
          return Center(
            child: Icon(Icons.local_airport),
          );
        } else {
          return null;
        }
      },
      weekFormat: false,
      //markedDatesMap: _markedDateMap,
      height: 420.0,
      //selectedDateTime: _currentDate,
      daysHaveCircularBorder: false,

      /// null for not rendering any border, true for circular border, false for rectangular border
    );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 8/6,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                      Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: hasBabySitter?
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/png/bloom_buddie_alt.png',),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ):
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://s3.amazonaws.com/assets.mockflow.com/app/wireframepro/company/C6cb20310489449e9a1687a74d3b5ac7b/projects/MYFw8X66Gh/images/D217a3e93f9338ed58fd2020d98693fc8',),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),

                      Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedBackgroundText(
                                'Bloom Buddies Babysitting\nMy Future Baby-sitter',
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                                backgroundColor: Colors.amber,
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0,),

              ///Calendar
              _isLoading? loading(): Container(margin: EdgeInsets.symmetric(horizontal: 16.0), child: myCalendarCarousel,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.yellow,
                    child: SizedBox( width: 120.0, child: Text('Add Extra Hours', textAlign: TextAlign.center,),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    child: SizedBox( width: 120.0, child: Text('Add Absent', textAlign: TextAlign.center,),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.orange,
                    child: SizedBox( width: 120.0, child: Text('Delete Extra Hours', textAlign: TextAlign.center,),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,
                    child: SizedBox( width: 120.0, child: Text('Delete Absent', textAlign: TextAlign.center,),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),

                ],
              ),

              SizedBox(height: 20.0,),

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
                            "Birthday",
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
                          "",
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
                          "",
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
                      "Badges",
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
                    _isLoading? loading(): availabilityChart,
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
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}


Widget coloredBox({required Color color}) {
  return GestureDetector(
    onTap: () {

    },
    child: Container(
      color: color,
      width: 100.0,
      height: 40,
    ),
  );
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
