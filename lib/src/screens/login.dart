import 'package:flutter/material.dart';
import 'package:flutter_app/src/app.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('ログイン'),
          onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => const MyApp()
              ));
            },
        )),
    );
  }
}