

import 'package:bloom/screen/parent/widgets/buddie_container.dart';
import 'package:bloom/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final Map<String, dynamic> dataMap;
  const NotificationScreen({Key? key, required this.dataMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar.appBar(title: dataMap['notificationType']),
      body: myWidget(dataMap),
    );
  }
}

Widget myWidget(Map dataMap) {
  switch(dataMap['notificationType']) {
    case 'Suggested babysitter': {
      return Column(
        children: [
          BuddyContainer(),
        ],
      );
    }
    case 'New message': {
      return Column(
        children: [
          Text('New message'),
        ],
      );
    }
    case 'Meeting request accepted': {
      return Column(
        children: [

        ],
      );
    }
    case 'Meeting request refused': {
      return Column(
        children: [

        ],
      );
    }
    case 'Hire request accepted': {
      return Column(
        children: [

        ],
      );
    }
    case 'Hire request refused': {
      return Column(
        children: [

        ],
      );
    }
    case 'Extra hour request received': {
      return Column(
        children: [

        ],
      );
    }
    case 'Extra hours request accepted': {
      return Column(
        children: [

        ],
      );
    }
    case 'Extra hours request refused': {
      return Column(
        children: [
          Text('Extra hour request'),
        ],
      );
    }
    case 'Absence request received': {
      return Column(
        children: [

        ],
      );
    }
    case 'Absence request accepted': {
      return Column(
        children: [

        ],
      );
    }
    case 'Absence request refused': {
      return Column(
        children: [

        ],
      );
    }
    case 'New suggested babysitter': {
      return Column(
        children: [

        ],
      );
    }
    case 'Babysitter confirmed/hired': {
      return Column(
        children: [

        ],
      );
    }
    case 'New invoice available': {
      return Column(
        children: [

        ],
      );
    }
    case 'Payment successful': {
      return Column(
        children: [

        ],
      );
    }
    case 'New group message': {
      return Column(
        children: [

        ],
      );
    }
    case 'After an interview/meeting': {
      return Column(
        children: [

        ],
      );
    }
    case 'Password reset - magic link': {
      return Column(
        children: [

        ],
      );
    }
    case 'Welcome email - after sign up email': {
      return Column(
        children: [

        ],
      );
    }
    default: {
      return Column(
        children: [

        ],
      );
    }
  }

}