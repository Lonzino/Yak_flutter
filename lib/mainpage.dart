import 'package:flutter/material.dart';
import 'package:yak_mukja/mainpages/homescreen.dart';
import 'package:yak_mukja/mainpages/mylikescreen.dart';
import 'package:yak_mukja/mainpages/myscreen.dart';
import 'package:yak_mukja/mainpages/showgridscreen.dart';



class mainpage extends StatefulWidget {
  @override
  _mainpagestate createState() => _mainpagestate();
}

class _mainpagestate extends State<mainpage>{
  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
        label: '홈',
        icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
        label: '모아보기',
        icon: Icon(Icons.grid_view)
    ),
    BottomNavigationBarItem(
        label: '좋아요',
        icon: Icon(Icons.favorite)
    ),
    BottomNavigationBarItem(
        label: '내페이지',
        icon: Icon(Icons.account_circle)
    ),
  ];
  List pages = [
    homescreen(),
    showgridscreen(),
    mylikescreen(),
    myscreen()
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('메인페이지', style: TextStyle(fontSize: 30,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,

        showUnselectedLabels: false,
        showSelectedLabels: false,

        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items:bottomItems,
      ),
      body:pages[_selectedIndex],
    );
  }
}