import 'package:flutter/material.dart';

void main() => runApp(SearchPage());

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  String requestNo = "";

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
          Container(
              padding: EdgeInsets.all(20),
              child: Card(
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
              )))
        ]),
      ),
    );
  }
}
