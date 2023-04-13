/*
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';


class SimpleTablePage extends StatefulWidget {
  SimpleTablePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _SimpleTablePageState createState() => _SimpleTablePageState();
}

class _SimpleTablePageState extends State<SimpleTablePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Table')),
      body:
    );
  }

  List<Widget> _getTitleWidget() {
    return ;
  }

  Widget _getTitleItemWidget(String label, double width) {
    return ;
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      child: Text(widget.user.userInfo[index].name),
      width: 100,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                  widget.user.userInfo[index].status
                      ? Icons.notifications_off
                      : Icons.notifications_active,
                  color: widget.user.userInfo[index].status
                      ? Colors.red
                      : Colors.green),
              Text(widget.user.userInfo[index].status ? 'Disabled' : 'Active')
            ],
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(widget.user.userInfo[index].phone),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(widget.user.userInfo[index].registerDate),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(widget.user.userInfo[index].terminationDate),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}*/
