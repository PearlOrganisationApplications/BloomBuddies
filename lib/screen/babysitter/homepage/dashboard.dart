

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class babySitterDashboard extends StatefulWidget {
  const babySitterDashboard({Key? key}) : super(key: key);

  @override
  State<babySitterDashboard> createState() => _babySitterDashboardState();
}

class _babySitterDashboardState extends State<babySitterDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                   
                  child:  Center(
                    child: const Text(
                        "My Account",
                        style: TextStyle(
                            color:   Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 19.0
                        )
                    ),
                  ),
                ),
                Container(
                  height: 220.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                      fit: BoxFit.fill,
                    ),

                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://www.cinejosh.com/gallereys/actress/normal/regina_hot_photos_0806140138/regina_hot_photos_0806140138_037.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text("Bloom Buddies Babysitting \n Lise Dupark",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
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
      ),
    );
  }

}
