import 'package:flutter/material.dart';
import 'package:ch04/animation/animation_menu.dart';
import 'package:ch04/basic/basic_menu.dart';
import 'package:ch04/button/button_menu.dart';
import 'package:ch04/cupertino/cupertino_menu.dart';
import 'package:ch04/dialog/dialog_menu_page.dart';
import 'package:ch04/event/event_menu_page.dart';
import 'package:ch04/input/input_menu.dart';
import 'package:ch04/layout/layout_menu.dart';
import 'package:ch04/multi/multi_menu_page.dart';
import 'package:ch04/navigation/navigation_menu_page.dart';
import 'package:ch04/navigation/stateful_page.dart';
import 'package:ch04/navigation/stateless_page.dart';
import 'package:ch04/realworldui/real_world_menu_page.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondStatefulPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오준석의 플러터 4장 기본 위젯 예제'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/main.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('4.2 화면 배치를 위한 위젯'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MultiMenu()),
              );
            },
          ),
          ListTile(
            title: Text('4.3 위치, 정렬, 크기를 위한 위젯'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutMenu()),
              );
            },
          ),
          ListTile(
            title: Text('4.4 버튼 계열 위젯'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonMenu()),
              );
            },
          ),
          ListTile(
            title: Text('4.5 화면 표시용 위젯'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicMenu()),
              );
            },
          ),
          ListTile(
            title: Text('4.6 입력용 위젯'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InputMenu()),
              );
            },
          ),
          ListTile(
            title: Text('4.7 다이얼로그'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DialogMenuPage()),
              );
            },
          ),
          ListTile(
            title: Text('4.8 이벤트'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventMenuPage()),
              );
            },
          ),
          ListTile(
            title: Text('4.9 애니메이션'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimationMenuPage()),
              );
            },
          ),
          ListTile(
            title: Text('4.10 쿠퍼티노 디자인'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CupertinoPage()),
              );
            },
          ),
          ListTile(
            title: Text('5. 복잡한 UI 작성 <추가 내용>'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RealWorldMenuPage()),
              );
            },
          ),
          ListTile(
            title: Text('6. 네비게이션'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavigationMenuPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
