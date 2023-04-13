import 'package:bloom/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../utils/nospaceformatter.dart';
import 'form_data_registration.dart';

class SignupParentScreen extends StatefulWidget {
  const SignupParentScreen({Key? key}) : super(key: key);

  @override
  State<SignupParentScreen> createState() => _SignupParentScreenState();
}

class _SignupParentScreenState extends State<SignupParentScreen> {
  bool hasEnglishSpeaking = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBar(title: 'New Account - (Parent)',context: context),
      body: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 24.0,),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    textCapitalization: TextCapitalization.words,
                    onTapOutside: (event) {

                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [NoSpaceFormatter()],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                      hintText: ' Enter your first name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    textCapitalization: TextCapitalization.words,
                    onTapOutside: (event) {

                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [NoSpaceFormatter()],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                      hintText: ' Enter your last name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onTapOutside: (event) {

                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [NoSpaceFormatter()],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Id',
                      hintText: ' Enter a Email Id',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    onTapOutside: (event) {

                    },
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [NoSpaceFormatter()],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: ' Enter a Password',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    onTapOutside: (event) {

                    },
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [NoSpaceFormatter()],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Enter Confirm Password',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: Colors.green,
                          checkColor: Colors.black,
                          shape: CircleBorder(),
                          value: hasEnglishSpeaking,
                          onChanged: (bool? value) {
                            setState(() {
                              hasEnglishSpeaking = !hasEnglishSpeaking;
                            });
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "I want an English speaking babysitter",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: Colors.green,
                          checkColor: Colors.black,
                          shape: CircleBorder(),
                          value: !hasEnglishSpeaking,
                          onChanged: (bool? value) {
                            setState(() {
                              hasEnglishSpeaking = !hasEnglishSpeaking;
                            });
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "I want a French speaking babysitter",
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (
                            context) => FromDataRegistrationParent()));
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.apple,),
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Login",
                            style: TextStyle(fontSize: 22, color: Colors.red),))
                    ],
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
