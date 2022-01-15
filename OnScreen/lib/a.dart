import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatelessWidget{


  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Show(),
        ),
    );
  }

}

class Show extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Show>{
  void onScreen(){
    final intent = const AndroidIntent(
      action: "android.intent.action.SCREEN_ON",
    );
    intent.sendBroadcast();
  }

  Widget build(BuildContext context){
    return Text("");
  }

}

class Hehe extends AndroidIntent{
  Future<void> sendBroadcast() async{

  }
}
