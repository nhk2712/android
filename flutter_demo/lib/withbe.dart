import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget{
  int i=1;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App with backend"),
      ),
      body: ListView.builder(itemBuilder: (context, i){
        while (i<11){
          i++;
          return ListTile(
            title: Text("$i"),
          );
      }
        return Scaffold();
      }),
    );
  }
}