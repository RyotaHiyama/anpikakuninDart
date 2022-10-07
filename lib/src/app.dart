import 'package:flutter/material.dart';
import 'package:flutter_app/src/screens/notifications.dart';

import 'screens/inquiry.dart';
import 'screens/operationInfo.dart';
import 'screens/schedule.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? ket}) : super(key: ket);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '安否確認システム',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  static const _screens = [
    ScheduleScreen(),
    OperationInfoScreen(),
    NotificationsScreen(),
    InquiryScreen()
  ];

  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: '時間割'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: '運行情報'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'お知らせ'),
          BottomNavigationBarItem(icon: Icon(Icons.ring_volume), label: '問い合わせ'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

}