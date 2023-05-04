


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart' show DateFormat;
import '../../widgets/custom_container.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime(2019, 2, 3);
  DateTime _currentDate2 = DateTime(2019, 2, 3);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
  DateTime _targetDateTime = DateTime(2019, 2, 3);
  bool _instantReservation = true;
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
      body: SingleChildScrollView(
        child: Column(
          children: [

            SwitchListTile(
              title: Row(
                children: [
                  ImageIcon(
                    AssetImage('assets/png/instant_reservation.png'),
                    size: 20.0,
                    color: Colors.black,
                  ),
                  Text('Instant Booking', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),),
                ],
              ),
              value: _instantReservation,
              onChanged: (v) {
                setState(() {
                  _instantReservation = v;
                });
              },
              activeColor: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {

              },
              color: Colors.blue,
              child: Text('Update Availability'),
              textColor: Colors.white,
            ),
            ///Availability Calendar
            _isLoading? loading(): availabilityChart,
            SizedBox(height: 8.0,),
            Text('Your schedule is very important and you will receive reservations according to your inputted availability.', textAlign: TextAlign.center,),
            SizedBox(height: 20.0,),
            Text('My Calendar'),
            _isLoading? loading(): Container(margin: EdgeInsets.symmetric(horizontal: 16.0), child: myCalendarCarousel,),


            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text('Current Total hours this month: 32',),
            ),

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
            Text('My Families'),
            SizedBox(height: 8.0,),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  );
                },
            ),

            SizedBox(height: 50.0,),

          ],
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
