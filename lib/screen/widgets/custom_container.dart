

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget dayContainer({required String day}) {
  return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      height: 30.0,
      child: Text(day, textAlign: TextAlign.center,),
  );
}

Widget headerContainer({required String day, double? width}) {
  return Container(
    alignment: Alignment.center,
    color: Colors.yellow,
    height: 40.0,
    width: width ?? 80.0,
    child: Text(day, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
  );

}


class CustomBox extends StatefulWidget {
  final bool? isSelected;
  const CustomBox({Key? key, this.isSelected}) : super(key: key);

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  late bool _isSelected;

  @override
  void initState() {
    _isSelected = widget.isSelected ?? false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        color: _isSelected? Colors.green : Colors.white,
        width: 80.0,
        height: 30,
      ),
    );
  }
}
