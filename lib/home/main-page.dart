import 'package:flutter/material.dart';
import 'package:homestay_app/home/chat-page.dart';
import 'package:homestay_app/home/history-page.dart';
import 'package:homestay_app/home/home-page.dart';
import 'package:homestay_app/home/setting-page.dart';
import 'package:homestay_app/template.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget buttomNavbar(){
      return Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: subPrimaryColor,
              blurRadius: 2,
            ),
          ]
        ),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            setState(() {
              currentIndex = value;
              print(value);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 0 ? Image.asset('assets/icons/icon-home-active.png', width: 24,): Image.asset('assets/icons/icon-home-hidden.png', width: 24,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 1 ? Image.asset('assets/icons/icon-history-active.png', width: 24,) : Image.asset('assets/icons/icon-history-hidden.png', width: 24,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 2 ? Image.asset('assets/icons/icon-chat-active.png', width: 24,): Image.asset('assets/icons/icon-chat-hidden.png', width: 24,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 3 ? Image.asset('assets/icons/icon-setting-active.png', width: 24,): Image.asset('assets/icons/icon-setting-hidden.png', width: 24,)),
              label: '',
            ),
          ]
        ),
      );
    }

    Widget bodyHome(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return HistoryPage();
          break;
        case 2:
          return ChatPage();
          break;
        case 3:
          return SettingPage();
          break;
        default: 
        return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: buttomNavbar(),
      body: bodyHome(),
    );
  }
}