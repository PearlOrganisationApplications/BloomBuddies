import 'package:flutter/material.dart';

class FromDataRegistrationBabySitter extends StatefulWidget {
  const FromDataRegistrationBabySitter({Key? key}) : super(key: key);

  @override
  State<FromDataRegistrationBabySitter> createState() => _FromDataRegistrationBabySitter();
}

class _FromDataRegistrationBabySitter extends State<FromDataRegistrationBabySitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
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
                      labelText: 'Confirm Password',
                      hintText: 'Enter Confirm Password',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1.0),
                  ),
                  child: Row(
                    children: [
                      Text("Date of birth"),
                      TextButton(
                          onPressed: () {
                            _showDatePicker();
                          },
                          child: Text("data Picker"))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: MaterialButton(
                    color: Colors.black,
                    onPressed: () {
                      /*Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FromDataRegistrationBabySitter()));*/
                    },
                    child: const Text(
                      "Signup ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.apple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.g_mobiledata),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));
  }
}
