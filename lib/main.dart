import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yak_mukja/landingpage.dart';
import 'package:yak_mukja/mainpage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      home: landingpage(),
    );
  }
}