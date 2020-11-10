import 'package:flutter/material.dart';

void main() async {
  runApp(
    RichText(
      textDirection: TextDirection.ltr,
      text: TextSpan(text: 'Hello ArcTouch'),
    ),
  );

  await Future.delayed(Duration(seconds: 15));

  runApp(
    RichText(
      textDirection: TextDirection.ltr,
      text: TextSpan(text: 'Hello Flutter'),
    ),
  );
}
