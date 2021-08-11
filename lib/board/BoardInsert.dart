import 'package:flutter/material.dart';

//https://flutter-examples.com/flutter-insert-text-input-textfield-data-to-mysql-server/

class BoardInsert extends StatelessWidget {

  final ipController = TextEditingController();
  final msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('입력'),
        ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget> [
            Container(
                margin: EdgeInsets.all(8),
                child : TextField(
                  controller: ipController,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'IP 필드'),
                )
            ),
            Container(
                margin: EdgeInsets.all(8),
                child : TextField(
                  controller: msgController,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: '메시지 필드'),
                )
            ),
            Container(
                margin: EdgeInsets.all(8),
                child : ElevatedButton(
                    onPressed: () => { Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BoardInsert()),
                    )}, child: Text("전송")),
            ),

          ],
        )
      ),
    );
  }

}