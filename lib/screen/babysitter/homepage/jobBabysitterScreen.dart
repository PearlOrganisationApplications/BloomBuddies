import 'package:flutter/material.dart';

class JobBabysitterScreen extends StatefulWidget {
  const JobBabysitterScreen({Key? key}) : super(key: key);

  @override
  State<JobBabysitterScreen> createState() => _JobBabysitterScreenState();
}

class _JobBabysitterScreenState extends State<JobBabysitterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black87)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black87)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Parent first & last name",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text("Bloom Buddies BabySitting",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/474x/e4/f8/d2/e4f8d24f43eae9c7823492eccfa121f1.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(

                          children: [
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black87)),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black87)),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black87)),
                            ),

                          ],
                        )
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black87)),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
