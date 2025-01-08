import 'package:flutter/material.dart';

// ListView 와 ListTile 위젯을 살펴 보자
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('item1'),
              subtitle: Text('item sub ...'),
              trailing: IconButton(
                  onPressed: () {
                    print('item1 클릭.....');
                  },
                  icon: Icon(Icons.more_horiz)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('2'),
              ),
              title: Text('item2'),
              subtitle: Text('item sub ...'),
              trailing: IconButton(
                  onPressed: () {
                    print('item2 클릭.....');
                  },
                  icon: Icon(Icons.more_horiz)),
            )
          ],
        ),
      ),
    );
  }
}
