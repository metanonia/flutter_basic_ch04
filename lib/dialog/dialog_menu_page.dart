import 'package:flutter/material.dart';
import 'package:ch04/basic/circle_avatar_page.dart';
import 'package:ch04/basic/icon_page.dart';
import 'package:ch04/basic/image_page.dart';
import 'package:ch04/basic/progress_page.dart';
import 'package:ch04/basic/text_page.dart';
import 'package:ch04/dialog/alert_dialog_page.dart';
import 'package:ch04/dialog/date_picker_page.dart';
import 'package:ch04/dialog/time_picker_page.dart';
import 'package:ch04/input/check_switch_page.dart';
import 'package:ch04/input/dropdown_page.dart';
import 'package:ch04/input/radio_page.dart';
import 'package:ch04/input/textfield_page.dart';

class DialogMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.7 다이얼로그'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('AlertDialog'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertDialogPage()),
              );
            },
          ),
          ListTile(
            title: Text('DatePicker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DatePickerPage()),
              );
            },
          ),
          ListTile(
            title: Text('TimePicker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimePickerPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
