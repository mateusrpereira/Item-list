import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          title: const Text('Example'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.arrow_downward),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.arrow_upward),
            ),
          ],
        ),
        body: ListView(
          children: const [
            ItemRow('Item #0', 'Subtitle 0'),
            ItemRow('Item #1', 'Subtitle 1'),
            ItemRow('Item #2', 'Subtitle 2'),
            ItemRow('Item #3', 'Subtitle 3'),
            ItemRow('Item #4', 'Subtitle 4'),
            ItemRow('Item #5', 'Subtitle 5'),
            ItemRow('Item #6', 'Subtitle 6'),
            ItemRow('Item #7', 'Subtitle 7'),
          ],
        ),
      ),
    );
  }
}

class ItemRow extends StatelessWidget {
  final String title;
  final String subtitle;

  const ItemRow(this.title,this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );

  }
}

