

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'dashboard.dart';
import 'notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      _index == 0? Dashboard() :
      _index == 1? Dashboard() :
      _index == 2? ChatScreen() :
      _index == 3? Dashboard() :
      _index == 4? Dashboard() : NotificationScreen(),
      bottomNavigationBar: ConvexAppBar.badge({2: '99+', /*1: Icons.assistant_photo,*/ 4: Colors.redAccent},
        items: [
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
