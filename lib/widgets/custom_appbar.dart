

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar {

  static AppBar appBar({required String title}) {
    return AppBar(
      title: Center(
        child: Text(title, style: TextStyle(color: Colors.blue,
            letterSpacing: 1,
            fontWeight: FontWeight.w700),),
      ),
      actions: [SizedBox(width: 50,)],
      backgroundColor: Colors.white,
      elevation: 4,
    );
  }
}


