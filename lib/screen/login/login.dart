import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../babysitter/signup_babysitter.dart';
import '../parent/signup_parent.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
const colorizeColors = [
  Colors.white,
  Colors.yellow,
  Colors.orange,
  Colors.yellow,
];
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/image/logo.png")),
                  SizedBox(height: 30,),
                  Form(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white),

                          decoration: InputDecoration(

                            border: OutlineInputBorder(),
                            labelText: 'Email Id',
                            hintText: ' Enter a Email Id',
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Password',
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {

                              },
                              child: Text("I forgot my password",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: MaterialButton(
                          color: Colors.black,
                          onPressed: () {

                          },
                          child: Text("Login",style: TextStyle(color: Colors.white),),
                        ),)

                    ],
                  )),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: Icon(Icons.apple, ),
                          padding: new EdgeInsets.all(0.0),
                          color: Colors.black,
                        iconSize: 38.0,
                        onPressed: (){

                        },
                      ),
                      SizedBox(width: 10,),
                      IconButton(icon: Icon(Icons.g_mobiledata ),
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.blue,
                        iconSize: 58.0,
                        onPressed: (){

                        },
                      ),


                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?"),
                      SizedBox(width: 10,),
                      TextButton(
                          onPressed: (){

                            Alert(
                              context: context,

                              type: AlertType.success,
                              title: "Choose your category",

                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "BABYSITTER",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignupBabySitterScreen()),),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                                DialogButton(
                                  child: Text(
                                    "PARENT",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignupParentScreen()),);
                                  },
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                              ],
                            ).show();
                          },
                          child: Text("SignUp",style: TextStyle(fontSize: 22,color: Colors.red),))
                    ],
                  )
                ],
              ),
            ),
          )),

        ],
      ),
    );
  }
}