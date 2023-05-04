import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bloom/screen/parent/homepage/home_page.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../app/preferences/app_preferences.dart';
import '../babysitter/homepage/home_page.dart';
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
      appBar: AppBar(
        leading: Text(''),
        leadingWidth: 0,
        title: Center(
          child: Text('WELCOME', style: TextStyle(color: Colors.blue, letterSpacing: 1, fontWeight: FontWeight.w700),),
        ),
        backgroundColor: Colors.white,
        elevation: 4,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
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
                        labelText: 'Email address',
                        hintText: ' Enter your Email address',
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
                        Alert(
                          context: context,

                          type: AlertType.success,
                          title: "Login Type",
                          desc: 'This is temporary dialog to switch our homescreen (parent and babysitter.)',

                          buttons: [
                            DialogButton(
                              child: Text(
                                "BABYSITTER",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              onPressed: () {

                                AppPreferences.saveCredentials(
                                    accountType: AccountType.BABYSITTER,
                                    photoUrl: 'https://s3.amazonaws.com/assets.mockflow.com/app/wireframepro/company/C6cb20310489449e9a1687a74d3b5ac7b/projects/MYFw8X66Gh/images/D217a3e93f9338ed58fd2020d98693fc8',
                                    email: 'amit@pearlorganisation.com',
                                    token: 'xyz',
                                    name: 'Jenny Marco',
                                    englishSpeaking: false);

                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BabySitterHomePage(),), (route) => false,);
                              },

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

                                AppPreferences.saveCredentials(
                                    accountType: AccountType.PARENT,
                                    photoUrl: 'https://s3.amazonaws.com/assets.mockflow.com/app/wireframepro/company/C6cb20310489449e9a1687a74d3b5ac7b/projects/MYFw8X66Gh/images/D217a3e93f9338ed58fd2020d98693fc8',
                                    email: 'vipin@pearlorganisation.com',
                                    token: 'abc',
                                    name: 'Shreya Mathur',
                                    englishSpeaking: true);

                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ParentHomePage()), (route) => false,);
                              },
                              color: Color.fromRGBO(0, 179, 134, 1.0),
                              radius: BorderRadius.circular(0.0),
                            ),
                          ],
                        ).show();
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
                              onPressed: () => Navigator.push(
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
                                Navigator.push(
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
      ),
    );
  }
}