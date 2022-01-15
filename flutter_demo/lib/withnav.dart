import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Second(),),);},
          child: Text("Move"),
          color: Colors.blue,
        ),
      ),
    );
  }
}

class Second extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){Navigator.pop(context);},
          child: Text("Back"),
          color: Colors.blue,
        ),
      ),
    );
  }
}