import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter23222/HomeMain.dart';
import 'package:flutter23222/changeIcon.dart';

import 'package:flutter23222/model/chateModel.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> a = [
    HomeMain(),
    ChangeIcon(),
    Container(color: Colors.amber),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      body: a.elementAt(currentIndex),
      //
      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            textAlign: TextAlign.center,
            icon: SvgPicture.asset(
              'assets/icon/Home.svg',
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Color(0xff212135)),
            ),
            activeColor: Color(0xffFA70FF),
          ),
          BottomNavyBarItem(
            icon: SvgPicture.asset('assets/icon/Copy.svg'),
            title: Text(
              'Themes',
              style: TextStyle(
                color: Color(0xff212135),
              ),
            ),
            textAlign: TextAlign.center,
            activeColor: Color(0xffFA70FF),
          ),
          BottomNavyBarItem(
            icon: SvgPicture.asset('assets/icon/Settings1.svg'),
            title: Text(
              'Setting',
              style: TextStyle(
                color: Color(0xff212135),
              ),
            ),
            textAlign: TextAlign.center,
            activeColor: Color(0xffFA70FF),
          ),
        ],
      ),
    );
  }
}
