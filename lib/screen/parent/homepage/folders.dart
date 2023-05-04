
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tab_container/tab_container.dart';


class ParentFolders extends StatefulWidget {
  const ParentFolders({Key? key}) : super(key: key);

  @override
  State<ParentFolders> createState() => _ParentFoldersState();
}

class _ParentFoldersState extends State<ParentFolders> {
  late TextTheme textTheme;
  File? pickedImage;
  bool onTapping = false;



  @override
  void initState() {
    super.initState();
  }


  void imagePickerOption() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
      ),
      context: context,
      builder: (context) => Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 40,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          pickImage(ImageSource.camera);
                        },
                        child:  Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Open Camera",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            pickImage(ImageSource.gallery);
                          },
                          child: Container(
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                shape: BoxShape.circle
                            ),
                            child: const Icon(
                              Icons.folder,
                              // color: kPrimaryColor,
                              size: 30,
                              color: Colors.orange,
                            ),
                          )
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Open Files",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo =
      await ImagePicker().pickImage(source: imageType, imageQuality: 20);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
      Navigator.pop(context);
    } catch (error) {
      debugPrint(error.toString());
    }
  }




  @override
  void didChangeDependencies() {
    textTheme = Theme.of(context).textTheme;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(0.6),
                border: Border(
                  top: BorderSide(color: Colors.grey.withOpacity(0.6)),
                  bottom: BorderSide(color: Colors.grey.withOpacity(0.6)),
                )
              ),
              child: TabContainer(
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
                tabEdge: TabEdge.left,
                childPadding: const EdgeInsets.all(20.0),
                children: _getChildren(context),
                tabs: _getTabs(context),
                isStringTabs: false,
                radius: 0,
              ),
            ),
          ),
          Spacer(flex: 1,),
        ],
      ),
    );
  }





  List<Widget> _getChildren(BuildContext context) => <Widget>[
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payments & Invoices', style: TextStyle(fontSize: 18.0)),
              Image.asset('assets/gif/loading.gif', height: 30.0, width: 30.0,)
            ],
          ),
          SizedBox(height: 16.0,),

          Placeholder(),

        ],
      ),
    ),
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('CMG', style: TextStyle(fontSize: 18.0)),
              Image.asset('assets/gif/loading.gif', height: 30.0, width: 30.0,)
            ],
          ),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Beneficiary number'),
              MaterialButton(onPressed: () {

              },
                child: Text('Save'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              color: Colors.blue,
              ),
            ],
          ),
          SizedBox(height: 8.0,),
          Placeholder(fallbackHeight: 200.0),
          SizedBox(height: 8.0,),
          Column(
            children: [
              Row(
                children: [
                  Text('Structure: Bloom Buddies Babysitting',),
                  ImageIcon(AssetImage('assets/png/copy_icon.png'),),
                ],
              ),
              Row(
                children: [
                  Text('Start: 11/2022',),
                  ImageIcon(AssetImage('assets/png/copy_icon.png'),),
                ],
              ),
              Row(
                children: [
                  Text('Siret: 88513068200010',),
                  ImageIcon(AssetImage('assets/png/copy_icon.png'),),
                ],
              ),
              Row(
                children: [
                  Text('Email: bonjour@bloom-buddies.fr',),
                  ImageIcon(AssetImage('assets/png/copy_icon.png'),),
                ],
              ),
              Row(
                children: [
                  Text('Address: 7 rue Meyerbeer 75009, Paris',),
                  ImageIcon(AssetImage('assets/png/copy_icon.png'),),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tax certificate', style: TextStyle(fontSize: 18.0)),
              Image.asset('assets/gif/loading.gif', height: 30.0, width: 30.0,)
            ],
          ),
          SizedBox(height: 16.0,),
          Row(
            children: [
              Expanded(child: Placeholder()),
              MaterialButton(onPressed: () {

              },
                child: Text('Download'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    ),
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Contract', style: TextStyle(fontSize: 18.0)),
              Image.asset('assets/gif/loading.gif', height: 30.0, width: 30.0,)
            ],
          ),
          SizedBox(height: 16.0,),
          Row(
            children: [
              Expanded(child: Placeholder()),
              MaterialButton(onPressed: () {

              },
                child: Text('Download'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  List<Widget> _getTabs(BuildContext context) => <Widget>[
    Icon(
      Ionicons.information_circle,
    ),
    Icon(
      Ionicons.document_text,
    ),
    Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: ImageIcon(
        AssetImage('assets/png/tax_icon.png'), color: Colors.white,
      ),
    ),

    Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: ImageIcon(
        AssetImage('assets/png/contract_icon.png'), color: Colors.white,
      ),
    ),
  ];

}


