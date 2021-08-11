import 'package:flutter/material.dart';
import 'package:bobapp/board/BoardInsert.dart';
import 'package:bobapp/board/BoardList.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(

          appBar: AppBar(

            title: Text('Flutter Demo'),

          ),

          drawer: Drawer (
            child : ListView(
              padding: EdgeInsets.zero,
              children: [

                DrawerHeader(
                  child: Text('Flutter Demo Menu'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.home , color : Colors.grey),
                  title : Text("홈"),
                  onTap: () => {
                    MyApp()
                  },
                ),

                ListTile(
                  leading: Icon(Icons.add_comment , color: Colors.grey[850],), // 화면의 첫 부분
                  title: Text("입력"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BoardInsert()),
                    )
                  },
                ),

                ListTile(
                  leading: Icon(Icons.view_list , color: Colors.grey[850],), // 화면의 첫 부분
                  title: Text("조회"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BoardList()),
                    )
                  },

                ),
              ],
            )
          ),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                    onPressed: () => { Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BoardInsert()),
                )}, child: Text("입력")),

                OutlinedButton(
                    onPressed: () => { Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BoardList()),
                )}, child: Text("조회")),

              ],
            )
          ),

        )
    );
  }

}