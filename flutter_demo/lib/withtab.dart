import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 2,
        child: Main(),
    );
  }
}

class Main extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App with tabs"),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.keyboard),
              text: "Keyboard",
            ),
            Tab(
              icon: Icon(Icons.mouse),
              text: "Mouse",
            ),
          ],
        ),
      ),
      drawer: Drw(),
      body: TabBarView(
        children: [
          Tabone(),
          Tabtwo(),
        ],
      ),
    );
  }
}

class Tabone extends StatelessWidget{
  Widget build(BuildContext context){
    return Center(
      child:Text("Keyboard"),
    );
  }
}

class Tabtwo extends StatelessWidget{
  Widget build(BuildContext context){
    return Center(
      child:Text("Mouse"),
    );
  }
}

class Drw extends StatelessWidget{
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue, size: 30,),
            title: Text("Settings", style: TextStyle(fontSize: 20),),
            contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 10),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
              },
          ),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: (){Navigator.pop(context);},),
        title: Text("Settings"),
      ),
    );
  }
}