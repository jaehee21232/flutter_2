import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Apobar",
        theme: ThemeData(primarySwatch: Colors.red),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0,
        actions: [
          //actions는 오른쪽
          IconButton(
            //메뉴 왼쪽에다가 버튼만들기
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("ogogogog");
            },
          ),
          IconButton(
            //메뉴 왼쪽에다가 버튼만들기
            icon: Icon(Icons.search),
            onPressed: () {
              print("rell?");
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/12.png"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/pepe.png"),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage("assets/pepe.png"),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: Text("pepe"),
              accountEmail: Text("k62533196@gmail.com"),
              onDetailsPressed: () {
                print("밑에 화살표 버튼 클릭");
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              iconColor: Colors.grey[800],
              onTap: () {
                print("Home button click");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              iconColor: Colors.grey[800],
              onTap: () {
                print("settings button click");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Q&A"),
              iconColor: Colors.grey[800],
              onTap: () {
                print("Q&A button click");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
