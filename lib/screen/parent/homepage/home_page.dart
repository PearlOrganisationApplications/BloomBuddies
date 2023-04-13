

import 'package:bloom/screen/parent/homepage/my_account.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
import 'dashboard.dart';
import 'my_bloom_buddies.dart';
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
      _index == 1? MyAccount() :
      _index == 2? Chat() :
      _index == 3? MyBloomBuddies() : NotificationScreen(),
      bottomNavigationBar: ConvexAppBar.badge({2: '99+', /*1: Icons.assistant_photo,*/ /*4: Colors.redAccent*/},
        items: [
          TabItem(icon: Icons.home,  ),
          TabItem(icon: Icons.supervisor_account_sharp,  ),
          TabItem(icon: Icons.chat_bubble,  ),
          TabItem(icon: Icons.handshake,  ),
          TabItem(icon: Icons.notifications,  ),
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
