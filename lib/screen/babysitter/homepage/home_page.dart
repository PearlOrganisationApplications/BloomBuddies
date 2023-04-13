

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'dashboard.dart';
import 'jobBabysitterScreen.dart';
import 'notification_screen.dart';

class babySitterHomePage extends StatefulWidget {
  const babySitterHomePage({Key? key}) : super(key: key);

  @override
  State<babySitterHomePage> createState() => _babySitterHomePageState();
}

class _babySitterHomePageState extends State<babySitterHomePage> {


  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      _index == 0? const babySitterDashboard() :
      _index == 1? const JobBabysitterScreen() :
      _index == 2? const babySitterChatScreen() :
      _index == 3? const babySitterDashboard() :
      _index == 4? const babySitterDashboard() : const babySitterNotificationScreen(),
      bottomNavigationBar: ConvexAppBar.badge(const {2: '99+', /*1: Icons.assistant_photo,*/ 4: Colors.redAccent},
        initialActiveIndex: 1,
        height: 50,
        top: -30,
        curveSize: 100,

        items:const [
          TabItem(icon: Icons.home,  ),
          TabItem(icon: Icons.map,  ),
          TabItem(icon: Icons.add,  ),
          TabItem(icon: Icons.map,  ),
          TabItem(icon: Icons.map,  ),
        ],
        onTap: (int i) {
        setState(() {
          _index = i;
        });
        },
      ),
    );
  }
}
