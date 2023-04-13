

import 'package:flutter/cupertino.dart';

class babySitterNotificationScreen extends StatefulWidget {
  const babySitterNotificationScreen({Key? key}) : super(key: key);

  @override
  State<babySitterNotificationScreen> createState() => _babySitterNotificationScreenState();
}

class _babySitterNotificationScreenState extends State<babySitterNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello World! Notifications list'),
    );  }
}
