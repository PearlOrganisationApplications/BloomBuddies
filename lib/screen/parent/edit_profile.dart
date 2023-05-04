

import 'package:flutter/cupertino.dart';

class ParentEditProfile extends StatefulWidget {
  const ParentEditProfile({Key? key}) : super(key: key);

  @override
  State<ParentEditProfile> createState() => _ParentEditProfileState();
}

class _ParentEditProfileState extends State<ParentEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Edit Profile'),
    );
  }
}
