import 'package:flutter/material.dart';

void main() => runApp(
      RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(text: 'Hello Text'),
      ),
    );
