

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar {

  static AppBar appBar({required BuildContext context, required String title}) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(title, style: TextStyle(color: Colors.white),),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        iconSize: 25.0,
        onPressed: () =>
            Navigator.pop(context),
      )
      ,
    );
  }
}


