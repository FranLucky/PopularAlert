import 'package:flutter/material.dart';
import 'package:popular_alert/popular_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TempPage(),
    );
  }
}

class TempPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopularAlert(
                    title: 'title',
                    content: 'content',
                    actions: [
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'A',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'B',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  );

                });
          },
          child: Text('show'),
        ),
      ),
    );
  }
}
