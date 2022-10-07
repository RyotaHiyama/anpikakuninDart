import 'package:flutter/material.dart';

class InquiryScreen extends StatelessWidget{
  const InquiryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
          child: Text('問い合わせ画面', style: TextStyle(fontSize: 32.0))
      ),
    );
  }
}