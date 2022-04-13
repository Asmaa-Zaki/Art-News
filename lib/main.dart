import 'package:flutter/material.dart';
import 'Screens/news.dart';

void main()
{
  runApp(const Art());
}

class Art extends StatelessWidget
{
  const Art({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArtNews(),
    );
  }
}

