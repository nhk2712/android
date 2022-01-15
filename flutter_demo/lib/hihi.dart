import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/new.dart';

void main(){
  runApp(
      MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                  title: Text("Khanhs App", style: _style(),),
                  backgroundColor: Colors.blue,
                ),
              drawer: Drawer(
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Image.asset("bg.jpg"),
                        Text("This app is funny", ),
                      ],
                    ),
                    ListTile(
                      title: Text("More fun", style: drawer(),),
                      minVerticalPadding: 10,
                      leading: Icon(Icons.more_horiz),
                      onTap: ()=>{},
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Setting", style: drawer(),),
                      minVerticalPadding: 10,
                      leading: Icon(Icons.settings),
                      onTap: ()=>{},
                    ),
                    ListTile(
                      title: Text("About", style: drawer(),),
                      minVerticalPadding: 10,
                      leading: Icon(Icons.info),
                      onTap: ()=>{},
                    ),
                  ],
                ),
              ),
              body:ListView(
                children: [
                  Container(
                    child: Image.asset('bg.jpg'),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width:1),
                    ),
                    margin: EdgeInsets.all(30),
                  ),
                  Container(
                    child:Text("Two", style: _list_style(), textAlign: TextAlign.center,),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width:1),
                    ),
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.fromLTRB(30,30,20,30),
                    width: 50,
                    height: 100,
                  ),
                  ListTile(
                    title: Text("Nguyen Khanh", style: TextStyle(fontSize: 20)),
                    subtitle: Text("A noob coder", style: TextStyle(fontSize: 15)),
                    contentPadding: EdgeInsets.fromLTRB(20,5,10,5),
                    leading: Icon(Icons.code, size: 40, color: Colors.black45,),
                    onTap:  ()=>{},
                    onLongPress: ()=>{},
                  ),
                ],
              ),
              backgroundColor: Colors.white,
            ),
      )
  );
}

TextStyle _style(){
  return TextStyle(
    color: Colors.white,
    fontSize: 22,
    letterSpacing: 0.5,
  );
}

TextStyle _list_style(){
  return TextStyle(
    fontSize: 25,
    color: Colors.black38,
  );
}

TextStyle drawer(){
  return TextStyle(
    fontSize: 20,
  );
}