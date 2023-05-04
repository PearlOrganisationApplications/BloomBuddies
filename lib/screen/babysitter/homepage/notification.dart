

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/notification_container.dart';

class BabySitterNotification extends StatefulWidget {
  const BabySitterNotification({Key? key}) : super(key: key);

  @override
  State<BabySitterNotification> createState() => _BabySitterNotificationState();
}

class _BabySitterNotificationState extends State<BabySitterNotification> {

  List<Map<String, dynamic>> dataList = [
    {
      "notificationType": "Meeting request accepted",
      "time": "05:00am"
    },
    {
      "notificationType": "Meeting request refused",
      "time": "11:00am"
    },
    {
      "notificationType": "New message",
      "time": "10:00am"
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
