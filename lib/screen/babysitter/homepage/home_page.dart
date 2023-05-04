

import 'package:bloom/app/preferences/app_preferences.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../login/login.dart';
import 'calendar.dart';
import 'chat.dart';
import 'folders.dart';
import 'my_account.dart';
import 'job.dart';
import 'notification.dart';

class BabySitterHomePage extends StatefulWidget {
  final currentTab;
  const BabySitterHomePage({Key? key, int? this.currentTab}) : super(key: key);

  @override
  State<BabySitterHomePage> createState() => _BabySitterHomePageState();
}

class _BabySitterHomePageState extends State<BabySitterHomePage> {


  late int _index;

  @override
  void initState() {
    _index = widget.currentTab??0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        title: Center(
          child: Text(_index == 0 ? 'My Account' :
          _index == 1 ? 'Job' :
          _index == 2 ? 'Messages' :
          _index == 3 ? 'Calendar' :
          _index == 4 ? 'Folders' : 'Notifications & Requests',),
        ),
        backgroundColor: Colors.white,
        elevation: 4,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.account_circle_rounded, size: 35, color: Colors.blue,),
            offset: Offset.fromDirection(1,60.0),
            onSelected: (result){
              switch(result){
                case 0: {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.custom,
                    barrierDismissible: true,
                    confirmBtnText: 'Save',
                    cancelBtnText: 'Close',
                    showCancelBtn: true,
                    widget: Column(
                      children: [
                        SwitchListTile(
                          title: const Text('App Notifications', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),),
                          value: false,
                          onChanged: (v) {},
                        ),
                        SwitchListTile(
                          title: const Text('Email Notifications', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),),
                          value: false,
                          onChanged: (v) {},
                        ),
                        SwitchListTile(
                          title: const Text('SMS Notifications', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ],
                    ),
                    closeOnConfirmBtnTap: false,
                    onConfirmBtnTap: () async {
                      if (0 < 5) {
                        await CoolAlert.show(
                          context: context,
                          type: CoolAlertType.error,
                          text: 'Please enter at least 5 characters',
                        );

                        return;
                      }
                      Navigator.of(context).pop();
                      await Future.delayed(const Duration(milliseconds: 500), () async {
                        await CoolAlert.show(
                          context: context,
                          type: CoolAlertType.success,
                          text: "Phone number has been saved!.",
                        );
                      });
                    },
                  );
                  break;
                }
                case 1: {
                  CoolAlert.show(

                    context: context,
                    type: CoolAlertType.confirm,
                    text: 'Do you want to logout',
                    confirmBtnText: 'Yes',
                    cancelBtnText: 'No',
                    confirmBtnColor: Colors.green,
                    closeOnConfirmBtnTap: false,
                    onConfirmBtnTap: () {
                      AppPreferences.clearCredentials();
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen(),), (route) => false);
                    },
                    /*context: context,
                    type: CoolAlertType.success,
                    text: "Your transaction was successful!",*/
                  );
                  break;
                }
                case 2: {
                  CoolAlert.show(
                    context: context,
                    title: 'To delete your account, kindly type.',
                    text: '\n\n\"I <3 Bloom Buddies Babysitting\"\n\n',
                    type: CoolAlertType.custom,
                    widget: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        //controller: passController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.keyboard),
                          prefixIconColor: Colors.grey,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),

                          hintText: 'I <3 Bloom Buddies Babysitting',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Colors.red),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Colors.yellow),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Colors.red),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (val) => val!.isEmpty
                            ? 'Please Enter Password'
                            : null,
                      ),
                    ),
                    confirmBtnText: 'Delete Account',
                    cancelBtnText: 'Cancel',
                    confirmBtnColor: Colors.red,
                    closeOnConfirmBtnTap: false,
                    barrierDismissible: true,
                    onCancelBtnTap: () {

                    },
                    onConfirmBtnTap: () {},
                    showCancelBtn: true,
                  );
                  break;
                }
              }
            },

            itemBuilder: (context) =>
            [
              PopupMenuItem(
                value: 0,
                child: Row(
                  children: [
                    Icon(Icons.edit_notifications_rounded, color: Colors.black,),
                    SizedBox(width: 4.0,),
                    Text('Notification Setting'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.black,),
                    SizedBox(width: 4.0,),
                    Text('Logout'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.delete, color: Colors.black,),
                    SizedBox(width: 4.0,),
                    Text('Delete My Account'),
                  ],
                ),
              ),
            ],),
        ],
      ),
      body:
      _index == 0? const BabySitterMyAccount() :
      _index == 1? const Job() :
      _index == 2? const BabySitterChat() :
      _index == 3? const Calendar() :
      _index == 4? const BabySitterFolders() : const BabySitterNotification(),
      bottomNavigationBar: ConvexAppBar.badge(const {2: '99+', /*1: Icons.assistant_photo,*/ /*4: Colors.redAccent*/},
        initialActiveIndex: _index,
        items:const [
          TabItem(icon: Icons.manage_accounts_rounded,),
          TabItem(icon: Icons.tag_sharp,),
          TabItem(icon: Icons.chat_bubble,),
          TabItem(icon: Icons.calendar_month,),
          TabItem(icon: Icons.folder,),
          TabItem(icon: Icons.notifications,),
        ],
        onTap: (int i) {
        setState(() {
          _index = i;
        });
        },
      ),
    );
  }
}
