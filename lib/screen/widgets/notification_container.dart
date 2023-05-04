

import 'package:bloom/app/preferences/app_preferences.dart';
import 'package:bloom/screen/babysitter/homepage/home_page.dart';
import 'package:bloom/screen/notification/notification_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../parent/homepage/home_page.dart';

Widget notificationContainer({required Map<String,dynamic> dataMap,}) {

  return LayoutBuilder(builder: (BuildContext context, BoxConstraints boxConstraints) {
    return Container(
      height: 80.0,
      margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6), width: 1.0)),
      ),
      child: InkWell(
        onTap: () {
          if(dataMap['notificationType']=='New message'){
            if(AppPreferences.getAccountType()== AccountType.BABYSITTER.toString()){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BabySitterHomePage(currentTab: 2),));
            }else {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ParentHomePage(currentTab: 2),));
            }
          }else {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => NotificationScreen(dataMap: dataMap),));
          }
        },
        splashColor: Colors.grey.withOpacity(0.6),

        child: Row(
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
                image: DecorationImage(image:
                dataMap['notificationType']=="New message"?
                AssetImage('assets/png/new_message_icon.png') :
                dataMap['notificationType']=="Suggested babysitter"?
                AssetImage('assets/png/suggestion_icon.png') :
                dataMap['notificationType']=="Meeting request accepted"?
                AssetImage('assets/png/meeting_request_icon.png') :
                AssetImage('assets/png/hire_request_icon.png'),
                ),
              ),
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(dataMap['notificationType'], style: TextStyle(fontWeight: FontWeight.w500)),
                        Text(dataMap['time']),
                      ],
                    ),
                    Text(
                        dataMap['notificationType']=="New message"?
                        'Dear ${AppPreferences.getDisplayName()}, you have received a new message from a babysitter, kindly reply via the messenger page.':
                        dataMap['notificationType']=="Suggested babysitter"?
                        'Dear ${AppPreferences.getDisplayName()}, you received a babysitter suggestion from Team Bloom, kindly find the babysitter\'s details.' :
                        dataMap['notificationType']=="Meeting request accepted"?
                        'Dear ${AppPreferences.getDisplayName()}, your meeting request of a babysitter has been accepted by the babysitter. Kindly find the meeting details as follows.' :
                        'Dear, ${AppPreferences.getDisplayName()}, your meeting request with a babysitter has been refused by the babysitter. Kindly try again with a different babysitter.',
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  },
  );
}