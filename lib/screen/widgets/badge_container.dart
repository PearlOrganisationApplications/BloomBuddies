

import 'package:flutter/cupertino.dart';

Widget badgeContainer({required String image, required String title}) {
  return Container(
    width: 60,
    height: 60,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, width: 30, height: 30,),
        Text(title),
      ],
    ),
  );
}