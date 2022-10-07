import 'package:flutter/material.dart';

class OperationInfoScreen extends StatelessWidget{
  const OperationInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
          child: Text('時刻表画面', style: TextStyle(fontSize: 32.0))
      ),
    );
  }
}