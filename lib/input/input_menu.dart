import 'package:flutter/material.dart';
import 'package:ch04/basic/circle_avatar_page.dart';
import 'package:ch04/basic/icon_page.dart';
import 'package:ch04/basic/image_page.dart';
import 'package:ch04/basic/progress_page.dart';
import 'package:ch04/basic/text_page.dart';
import 'package:ch04/input/check_switch_page.dart';
import 'package:ch04/input/dropdown_page.dart';
import 'package:ch04/input/radio_page.dart';
import 'package:ch04/input/textfield_page.dart';

class InputMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.6 입력용 위젯'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('TextField'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextFieldPage()),
              );
            },
          ),
          ListTile(
            title: Text('CheckBox / Switch'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckRadioSwitchPage()),
              );
            },
          ),
          ListTile(
            title: Text('Radio / RadioListTile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RadioPage()),
              );
            },
          ),
          ListTile(
            title: Text('DropDownButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DropdownPage()),
              );
            },
          ),
          ListTile(
            title: Text('PopupMenuButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProgressPage()),
              );
            },
          ),
          ListTile(
            title: Text('Slider'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CircleAvatarPage()),
              );
            },
          ),
          ListTile(
            title: Text('RangeSlider'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CircleAvatarPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
