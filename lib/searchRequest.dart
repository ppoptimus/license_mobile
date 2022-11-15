// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(SearchPage());

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  String requestNo = "";

  List employees = [
    {"id": 1, "name": "Mohan"},
    {"id": 2, "name": "Rohit"},
    {"id": 3, "name": "Ganesh"},
    {"id": 4, "name": "Yogesh"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ติดตามสถานะรายการคำขอ'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              decoration: InputDecoration(hintText: "เลขที่คำขอ"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text('ค้นหา'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: getData()),
          )
        ]),
      ),
    );
  }

  List<Widget> getData() {
    List<Widget> data = [];
    for (var i = 0; i < 5; i++) {
      data.add(Card(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ListTile(
            leading: Icon(Icons.art_track_rounded, size: 50),
            title: Text('รายการคำขอ'),
            subtitle: Text(
                'ใบอนุญาตประกอบธุรกิจจัดหางานนำคนต่างด้าวมาทำงานกับนายจ้างในประเทศ'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('ตรวตสอบสถานะ'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      )));
    }
    return data;
  }
}
