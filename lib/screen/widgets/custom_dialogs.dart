


import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';


class CustomDialogs {

  static YYDialog selectBadgesDialog({required BuildContext context}) {
    return YYDialog().build(context)
      ..width = MediaQuery.of(context).size.width -10
      ..height = 400
      ..backgroundColor = Colors.white
      ..borderRadius = 10.0
      ..showCallBack = () {
        //print("showCallBack invoke");
      }
      ..dismissCallBack = () {
        //print("dismissCallBack invoke");
      }
      ..widget(
        Padding(
            padding: EdgeInsets.only(top: 21),
          child: Text('Select a maximum of (3)', style: TextStyle(fontWeight: FontWeight.bold),),
        )
      )
      ..widget(
          Container(
        height: 190,
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          maxCrossAxisExtent: 70.0,
          children: [
            dialogbadgeContainer(badge: 'assets/png/badges/caring.png', name: 'Caring'),
            dialogbadgeContainer(badge: 'assets/png/badges/autonomous.png', name: 'Autonomous'),
            dialogbadgeContainer(badge: 'assets/png/badges/artistic.png', name: 'Artistic'),
            dialogbadgeContainer(badge: 'assets/png/badges/enthusiastic.png', name: 'Enthusiastic'),
            dialogbadgeContainer(badge: 'assets/png/badges/funny.png', name: 'Funny'),
            dialogbadgeContainer(badge: 'assets/png/badges/kind.png', name: 'Kind'),
            dialogbadgeContainer(badge: 'assets/png/badges/longterm_orient.png', name: 'Longterm Orient'),
            dialogbadgeContainer(badge: 'assets/png/badges/passionate.png', name: 'Passionate'),
            dialogbadgeContainer(badge: 'assets/png/badges/reliable.png', name: 'Reliable'),
            dialogbadgeContainer(badge: 'assets/png/badges/trustworth.png', name: 'Trustworth'),
          ],
        ),
      )
      )
      ..widget(
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 8.0),
            child: Text('Select a maximum of (3)', style: TextStyle(fontWeight: FontWeight.bold),),
          )
      )
      ..widget(
        Row(
          children: [
            SizedBox(width: 12.0,),
            ImageIcon(AssetImage('assets/png/badges/select.png')),
            Text('Criminal record n3 blank'),
          ],
        )
      )
      ..widget(
          Row(
            children: [
              SizedBox(width: 12.0,),
              ImageIcon(AssetImage('assets/png/badges/select.png')),
              Text('CPR & First-Aid Trained'),
            ],
          )
      )
      ..widget(
          Row(
            children: [
              SizedBox(width: 12.0,),
              ImageIcon(AssetImage('assets/png/badges/select.png')),
              Text('Non-Smoker'),
            ],
          )
      )
      ..widget(
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                  onPressed: () {

                  },
                child: Text('Save', style: TextStyle(color: Colors.white),),
                color: Colors.blue,
              ),
              SizedBox(width: 12.0,),
            ],
          )
      )
      ..animatedFunc = (child, animation) {
        return ScaleTransition(
          child: child,
          scale: Tween(begin: 0.0, end: 1.0).animate(animation),
        );
      };
  }
  static YYDialog notificationPopupDialog({required BuildContext context, required String type}) {
    YYDialog dialog = YYDialog().build(context)
      ..width = MediaQuery.of(context).size.width -10
      ..height = 400
      ..backgroundColor = Colors.white
      ..borderRadius = 10.0
      ..showCallBack = () {
        //print("showCallBack invoke");
      }
      ..dismissCallBack = () {
        //print("dismissCallBack invoke");
      }
      ..animatedFunc = (child, animation) {
        return ScaleTransition(
          child: child,
          scale: Tween(begin: 0.0, end: 1.0).animate(animation),
        );
      };


    switch(type) {
      case 'message' : {
        break;
      }
      case 'requests' : {
        break;
      }
    }
    return dialog;
  }
}


 Widget dialogbadgeContainer({required String badge, required String name}) {
  return Container(
    //color: Colors.red,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.green, width: 2.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(badge, width: 50.0, height: 50.0,),
        Text(name, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500), overflow: TextOverflow.ellipsis,)
      ],
    ),
  );
 }