


import 'package:bloom/screen/parent/homepage/folders.dart';
import 'package:bloom/screen/parent/widgets/buddie_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

import '../../../app/preferences/app_preferences.dart';
import '../buddieprofile/buddie_profile.dart';
import '../edit_profile.dart';

class Hire extends StatefulWidget {
  const Hire({Key? key}) : super(key: key);

  @override
  State<Hire> createState() => _HireState();
}

class _HireState extends State<Hire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 8/6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter:
                    ColorFilter.mode(Colors.black.withOpacity(0.6),
                        BlendMode.dstATop),
                    image: NetworkImage(
                        'https://cdn.babysits.com/content/en/article/top-tips-to-write-a-great-babysits-profile-20-1654184172.jpg'),
                    fit: BoxFit.fill,
                  ),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedBackgroundText(
                      'Bloom Family\n${AppPreferences.getDisplayName()}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                      backgroundColor: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),



            ListView.builder(
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return BuddyContainer();
            },
            ),
            SizedBox(height: 50,),
      ],
        ),
      ),
    );
  }
}
