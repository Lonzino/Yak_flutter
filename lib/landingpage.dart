import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yak_mukja/mainpage.dart';



class landingpage extends StatefulWidget {
  @override
  _landingpagestate createState() => _landingpagestate();
}

class _landingpagestate extends State<landingpage>{
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Get.offAll(mainpage());
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.amberAccent,
              child: Image.asset('assets/image/Logo.jpg')
            ),
            CircularProgressIndicator()
        ],
      ),
    );
  }
}