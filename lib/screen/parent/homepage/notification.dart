

import 'package:bloom/screen/widgets/notification_container.dart';
import 'package:convex_bottom_bar/src/bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentNotificationScreen extends StatefulWidget {
  const ParentNotificationScreen({Key? key}) : super(key: key);

  @override
  State<ParentNotificationScreen> createState() => _ParentNotificationScreenState();
}

class _ParentNotificationScreenState extends State<ParentNotificationScreen> {


  List<Map<String, dynamic>> dataList = [
    {
      "notificationType": "Suggested babysitter",
      "time": "09:00am"
    },
    {
      "notificationType": "New message",
      "time": "10:00am"
    },
    {
      "notificationType": "Meeting request accepted",
      "time": "05:00am"
    },
    {
      "notificationType": "Meeting request refused",
      "time": "11:00am"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return notificationContainer(dataMap: dataList[index],);
              },
            ),
            SizedBox(height: 50.0,),
          ],
        ),
      )
    );
  }
}
