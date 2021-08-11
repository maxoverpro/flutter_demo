import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BoardList extends StatefulWidget {

  @override _BoardListState createState() => _BoardListState();
}

class _BoardListState extends State<BoardList> {

  List data = [];

  Future<String> getData() async {

    http.Response response = await http.get(
        Uri.parse('http://192.168.0.9:8080/api/list'),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = jsonDecode(response.body);
    }); return "success";
  }

  @override void initState() {
    super.initState();
    this.getData();
  }

  @override Widget build(BuildContext context) {

    return Scaffold(

      appBar: new AppBar(
        title: new Text("조회"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            color: Colors.white,
            child:
            ListTile(
              title: Text(data[index]["msg"]),
              subtitle: Text(data[index]["ip"]),
            ),

          );
          },
      ),
    ); }
}
