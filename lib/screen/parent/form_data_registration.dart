
import 'package:bloom/screen/babysitter/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import 'homepage/home_page.dart';

class FromDataRegistrationParent extends StatefulWidget {
  const FromDataRegistrationParent({Key? key}) : super(key: key);

  @override
  State<FromDataRegistrationParent> createState() => _FromDataRegistrationParentState();
}

class _FromDataRegistrationParentState extends State<FromDataRegistrationParent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Address',
                            hintText: ' Enter a Address',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Telephone Number',
                            hintText: ' Enter a Telephone Number  ',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Number of Children',
                            hintText: 'Enter number of children',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Age of Children',
                            hintText: 'Enter age of Children',
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),


                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              headerContainer(day: 'Day', width: 80.0),
                              dayContainer(day: 'Monday'),
                              dayContainer(day: 'Tuesday'),
                              dayContainer(day: 'Wednesday'),
                              dayContainer(day: 'Thursday'),
                              dayContainer(day: 'Friday'),
                              dayContainer(day: 'Saturday'),
                              dayContainer(day: 'Sunday'),
                            ],
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        headerContainer(day: 'Start', width: 150.0),

                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.green,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        headerContainer(day: 'Finish', width: 150.0),

                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 150.0,
                                          height: 40,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: MaterialButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                          },
                          child: const Text(
                            'Finish',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
