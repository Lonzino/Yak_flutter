import 'package:flutter/material.dart';
import 'package:yak_mukja/cards/postcard.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenstate createState() => _homescreenstate();
}

class _homescreenstate extends State<homescreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
       child: postcard(number: 1),
      );
  }
}