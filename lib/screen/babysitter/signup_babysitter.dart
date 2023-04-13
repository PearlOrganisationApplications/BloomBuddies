import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../parent/form_data_registration.dart';
import 'form_data_registration.dart';

class SignupBabySitterScreen extends StatefulWidget {
  const SignupBabySitterScreen({Key? key}) : super(key: key);

  @override
  State<SignupBabySitterScreen> createState() => _SignupBabySitterScreenState();
}

class _SignupBabySitterScreenState extends State<SignupBabySitterScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
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
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: ' Enter a Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Id',
                      hintText: ' Enter a Email Id',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: ' Enter a Password',
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
                      labelText: 'Confirm Password',
                      hintText: 'Enter Confirm Password',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      checkColor: Colors.black,

                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "I am an English speaking babysitter",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: MaterialButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FromDataRegistrationBabySitter()));
                    },
                    child: const Text(
                      "signup ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.apple, ),
                    SizedBox(width: 10,),
                    Icon(Icons.g_mobiledata),

                  ],
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?"),
                    SizedBox(width: 10,),
                    TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Login",style: TextStyle(fontSize: 22,color: Colors.red),))
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
