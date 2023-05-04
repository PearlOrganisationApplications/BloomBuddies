


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../buddieprofile/buddie_profile.dart';



Widget BuddyContainer() {

  return LayoutBuilder(builder: (BuildContext context, BoxConstraints boxConstraints) {
    return Card(
      elevation: 4.0,
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ///header container
            Container(
              margin: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bloom Buddie : '),
                  Text('Lise Dupark'),
                  Icon(Icons.flag, size: 25.0,),
                ],
              ),
            ),

            ///profile details and actions
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.shutterstock.com/image-photo/babysitter-black-woman-read-book-260nw-2142840747.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Experience : ',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),
                                  ),
                                  TextSpan(
                                      text: '3 Years'
                                  )
                                ]
                            )
                        ),
                        SizedBox(height: 4.0),
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Address : ',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),

                                  ),
                                  TextSpan(
                                      text: 'Dehradun'
                                  )
                                ]
                            )
                        ),
                        SizedBox(height: 16.0),

                        ///Footer section
                        Container(
                          padding: EdgeInsets.all(4.0),
                          margin: EdgeInsets.only(top: 4.0, right: 4.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/png/verified_kyc.png', height: 20.0, width: 20.0,),
                                    Text(
                                      'KYC Verified',
                                      style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400),
                                      overflow: TextOverflow.fade,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/png/app_installed.png', height: 20.0, width: 20.0,),
                                    Text('App Installed',
                                      style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400),
                                      overflow: TextOverflow.fade, textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/png/recently_online.png', height: 20.0, width: 20.0,),
                                    Text('Recently Online',
                                      style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400),
                                      overflow: TextOverflow.fade, textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/png/instant_reservation.png', height: 20.0, width: 20.0,),
                                    Text('Instant Reservation',
                                      style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400),
                                      overflow: TextOverflow.fade, textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 100.0,
                      child: MaterialButton(
                        onPressed: (){},
                        color: Colors.blue,
                        child: Text('Message'),
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                      child: MaterialButton(
                        onPressed: (){},
                        color: Colors.yellow,
                        child: Text('Req. Meeting'),
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                      child: MaterialButton(
                        onPressed: (){},
                        color: Colors.red,
                        child: Text('Hire'),
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BuddyProfile(),));
                        },
                        child: Text('Open Profile'),
                        color: Colors.white,
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  },);
}
