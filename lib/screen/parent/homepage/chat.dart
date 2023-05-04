

import 'package:bloom/screen/parent/mychat/my_chat.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ParentChat extends StatefulWidget {
  const ParentChat({Key? key}) : super(key: key);

  @override
  State<ParentChat> createState() => _ParentChatState();
}

class _ParentChatState extends State<ParentChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6), width: 1.0)),
              ),
              height: 70,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.6),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage('https://static.independent.co.uk/2023/02/04/11/8a3504f2c41f59c36a9b068785859259Y29udGVudHNlYXJjaGFwaSwxNjc1NTkzNDU3-2.70853099.jpg?quality=75&width=990&crop=1999%3A1333%2Csmart&auto=webp',)
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 7,
                          right: 7,
                          child: Container(
                            height: 16.0,
                            width: 16.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green
                            ),
                            child: Container(
                              height: 8.0,
                              width: 8.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
              },),
            ),
            SizedBox(height: 4.0,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
                itemBuilder: (context, index) {
                  return  Container(
                    color: Colors.blue.shade100,
                    margin: EdgeInsets.only(bottom: 2.0),
                    child: Slidable(
                      // Specify a key if the Slidable is dismissible.
                      key: ValueKey(0),

                      /*// The start action pane is the one at the left or the top side.
                      startActionPane: ActionPane(
                        // A motion is a widget used to control how the pane animates.
                        motion: const ScrollMotion(),

                        // A pane can dismiss the Slidable.
                        dismissible: DismissiblePane(onDismissed: () {}),

                        // All actions are defined in the children parameter.
                        children: [
                          // A SlidableAction can have an icon and/or a label.
                          SlidableAction(
                            onPressed: doNothing,
                            backgroundColor: Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                          SlidableAction(
                            onPressed: doNothing,
                            backgroundColor: Color(0xFF21B7CA),
                            foregroundColor: Colors.white,
                            icon: Icons.share,
                            label: 'Share',
                          ),
                        ],
                      ),*/

                      // The end action pane is the one at the right or the bottom side.
                      endActionPane: ActionPane(
                        extentRatio: 0.5,
                        motion: ScrollMotion(),
                        children: [
                          SlidableAction(

                            onPressed: doNothing,
                            backgroundColor: Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                          /*SlidableAction(
                            // An action can be bigger than the others.
                            onPressed: doNothing,
                            backgroundColor: Color(0xFF7BC043),
                            foregroundColor: Colors.white,
                            icon: Icons.archive,
                            label: 'Archive',
                          ),*/
                          SlidableAction(
                            onPressed: doNothing,
                            backgroundColor: Color(0xFF0392CF),
                            foregroundColor: Colors.white,
                            icon: Icons.save,
                            label: 'Save',
                          ),
                        ],
                      ),

                      // The child of the Slidable is what the user sees when the
                      // component is not dragged.
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ParentMyChat(),));
                        },
                        splashColor: Colors.grey.withOpacity(0.6),
                        child: BlurryContainer(
                          blur: 5,
                          elevation: 0,
                          borderRadius: const BorderRadius.all(Radius.circular(0)),
                          color: Colors.transparent,
                          //color: Colors.lightBlue.withOpacity(0.1),
                          //margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),
                          padding: EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 70.0,
                                width: 70.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 70.0,
                                      width: 70.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: NetworkImage(
                                              'https://www.shutterstock.com/image-photo/babysitter-black-woman-read-book-260nw-2142840747.jpg'),
                                            fit: BoxFit.fill,),
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 4,
                                      right: 4,
                                      child: Container(
                                        height: 16.0,
                                        width: 16.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green
                                        ),
                                        child: Container(
                                          height: 8.0,
                                          width: 8.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 4.0,),
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('Lise Dupark', style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade700
                                      ),),
                                      SizedBox(height: 4.0),
                                      Text('Dummy text message, lastly sent.', style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black45
                                      ),),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )



                    ;
                },
            ),
            SizedBox(height: 50.0,),
          ],
        ),
      ),
    );
  }

  void doNothing(BuildContext context) {}

}
