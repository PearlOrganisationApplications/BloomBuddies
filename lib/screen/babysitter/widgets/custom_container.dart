

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget dayContainer({required String day}) {
  return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      height: 40.0,
      width: 80.0,
      child: Text(day, textAlign: TextAlign.center,),
  );
}

Widget headerContainer({required String day, required double width}) {
  return Container(
    alignment: Alignment.center,
    color: Colors.yellow,
    height: 40.0,
    width: width,
    child: Text(day, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
  );

}