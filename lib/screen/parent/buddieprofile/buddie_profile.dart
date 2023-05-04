

import 'package:bloom/screen/widgets/custom_dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class BuddyProfile extends StatefulWidget {
  const BuddyProfile({Key? key}) : super(key: key);

  @override
  State<BuddyProfile> createState() => _BuddyProfileState();
}

class _BuddyProfileState extends State<BuddyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 8/6,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                      Spacer(flex: 2,),
                      Row(
                        children: [
                          Container(
                            height: 120.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.shutterstock.com/image-photo/babysitter-black-woman-read-book-260nw-2142840747.jpg'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),

                          Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundedBackgroundText(
                                    'Bloom Buddies Babysitting\nLise Dupark',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                                    backgroundColor: Colors.amber,
                                  ),
                                ],
                              )
                          ),
                          /*Expanded(
                            child:

                            Text("",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.indigo,
                                  letterSpacing: 1,
                                  wordSpacing: 2,
                                  fontWeight: FontWeight.w900, fontSize: 24.0),),
                          )*/
                        ],
                      ),
                      Spacer(flex: 1,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          MaterialButton(
                            onPressed: (){},
                            color: Colors.blue,
                            child: Text('Message'),
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){},
                            color: Colors.yellow,
                            child: Text('Req. Meeting'),
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){},
                            color: Colors.red,
                            child: Text('Hire'),
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),
                          ),
                        ],
                      ),
                      Spacer(flex: 2,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0,),


              Row(
                children: [
                  Container(
                    width: 150,
                    height: 300,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bio",style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 19.0
                        ),),
                        Text("Birthday ",style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 9.0
                        ),),
                        Text("Telephone",style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 9.0
                        ),),
                        Text("Education",style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 9.0
                        ),),
                        Text("Badges",style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 19.0
                        ),),
                        Row(children: [
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ia1NGQJIddC2-LlPpZ-J6mNIQxLV3Q-QPau16a0rf_ONehNKU19Jj8g1y_AwxDj-XdI&usqp=CAU'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),

                          ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ia1NGQJIddC2-LlPpZ-J6mNIQxLV3Q-QPau16a0rf_ONehNKU19Jj8g1y_AwxDj-XdI&usqp=CAU'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),

                          ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn-icons-png.flaticon.com/512/385/385102.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),

                          ),
                        ],)
                      ],
                    ),
                  ),
                  Container(
                    width:   150,
                    height: 300,

                    child:Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [
                          Text("1", style: TextStyle(fontSize: 15.0),),
                          Text("Mohit", style: TextStyle(fontSize: 15.0),),
                          Text("25", style: TextStyle(fontSize: 15.0),),
                        ]),
                        TableRow(children: [
                          Text("2", style: TextStyle(fontSize: 15.0),),
                          Text("Ankit", style: TextStyle(fontSize: 15.0),),
                          Text("27", style: TextStyle(fontSize: 15.0),),
                        ]),
                        TableRow(children: [
                          Text("3", style: TextStyle(fontSize: 15.0),),
                          Text("Rakhi", style: TextStyle(fontSize: 15.0),),
                          Text("26", style: TextStyle(fontSize: 15.0),),
                        ]),
                        TableRow(children: [
                          Text("4", style: TextStyle(fontSize: 15.0),),
                          Text("Yash", style: TextStyle(fontSize: 15.0),),
                          Text("29", style: TextStyle(fontSize: 15.0),),
                        ]),
                        TableRow(children: [
                          Text("5", style: TextStyle(fontSize: 15.0),),
                          Text("Pragati", style: TextStyle(fontSize: 15.0),),
                          Text("28", style: TextStyle(fontSize: 15.0),),

                        ]),
                        TableRow(children: [
                          Text("6", style: TextStyle(fontSize: 15.0),),
                          Text("Pragati", style: TextStyle(fontSize: 15.0),),
                          Text("28", style: TextStyle(fontSize: 15.0),),

                        ]),
                        TableRow(children: [
                          Text("7", style: TextStyle(fontSize: 15.0),),
                          Text("Pragati", style: TextStyle(fontSize: 15.0),),
                          Text("28", style: TextStyle(fontSize: 15.0),),

                        ]), TableRow(children: [
                          Text("8", style: TextStyle(fontSize: 15.0),),
                          Text("Pragati", style: TextStyle(fontSize: 15.0),),
                          Text("28", style: TextStyle(fontSize: 15.0),),

                        ]),



                      ],
                    ) ,
                  ),



                ],
              ),
              Text("Experience : 3 years",style: TextStyle(
                  color:   Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                  fontStyle:  FontStyle.normal,
                  fontSize: 19.0
              )),
              SizedBox(height: 20,),
              Text(
                  textAlign: TextAlign.start,
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s\n with the release of Letraset sheets containing Lorem Ipsum passages, and more recently\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
              , SizedBox(height: 20,)
              , Text("About me",style: TextStyle(
                  color:   Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                  fontStyle:  FontStyle.normal,
                  fontSize: 19.0
              )),
              SizedBox(height: 20,),
              Text(
                  textAlign: TextAlign.start,
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s\n with the release of Letraset sheets containing Lorem Ipsum passages, and more recently\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
              ,SizedBox(height: 20,),
              Text("Hobbies",style: TextStyle(
                  color:   Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                  fontStyle:  FontStyle.normal,
                  fontSize: 19.0
              )),
              SizedBox(height: 20,),
              Text(
                  textAlign: TextAlign.start,
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s\n with the release of Letraset sheets containing Lorem Ipsum passages, and more recently\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
              , SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
