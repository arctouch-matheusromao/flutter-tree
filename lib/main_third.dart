import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool toggleTree = false;

  Widget firstTree() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RichText(text: TextSpan(text: 'Hello Android')),
      SizedBox(width: 15.0),
      Image.network(
        'https://logodownload.org/wp-content/uploads/2015/05/android-logo-3-2.png',
        scale: 40,
      )
    ],
  );

  Widget secondTree() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RichText(text: TextSpan(text: 'Hello iOS')),
      Padding(padding: const EdgeInsets.only(left: 15.0)),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Image.network(
          'https://logodownload.org/wp-content/uploads/2013/12/apple-logo-2.png',
          scale: 40,
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Expanded(
              child: toggleTree ? firstTree() : secondTree()
          ),
          RaisedButton(
            child: Text('Press me!'),
            onPressed: () {
              setState(() {
                toggleTree = !toggleTree;
              });
            },
          )
        ],
      ),
    );
  }
}
