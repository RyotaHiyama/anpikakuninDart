import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget{
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
          child: Text('時間割画面', style: TextStyle(fontSize: 32.0))
      ),
    );
  }
}