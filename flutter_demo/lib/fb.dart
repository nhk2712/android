import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("facebook", style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.message, color: Colors.black,),),
          ],
          shadowColor: Colors.transparent,
          bottom: TabBar(
            tabs: [
              Icon(Icons.home, color: Colors.blue, size: 30,),
              Icon(Icons.person, color: Colors.blue, size: 30,),
              Icon(Icons.notifications, color: Colors.blue, size: 30,),
              Icon(Icons.menu, color: Colors.blue, size: 30,),
            ],
            labelPadding: EdgeInsets.fromLTRB(0,10,0,20),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    ListTile(
                      title: Text("What's on your mind?", style: TextStyle(fontSize: 17),),
                      leading: Icon(Icons.person, size: 40,),
                      contentPadding: EdgeInsets.all(5),
                      onTap: (){},
                    ),
                    Divider(height: 0.5,),
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Row(
                        children: [
                          FlatButton(
                            child: Text("Live"),
                            onPressed: (){},
                          ),
                          FlatButton(
                            child: Text("Photos"),
                            onPressed: (){},
                          ),
                          FlatButton(
                            child: Text("Room"),
                            onPressed: (){},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 10,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    ListTile(
                      title: Text("Host of this app", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                      leading: Icon(Icons.person, size: 40,),
                      contentPadding: EdgeInsets.fromLTRB(10,5,0,0),
                      subtitle: Text("Just now", style: TextStyle(fontSize: 15),),
                    ),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(fontSize: 17),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    ),
                    Image.asset("bg.jpg"),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Row(
                        children: [
                          FlatButton(onPressed: (){}, child: Text("Like"),),
                          FlatButton(onPressed: (){}, child: Text("Comment"),),
                          FlatButton(onPressed: (){}, child: Text("Share"),),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 10,),
              ],
            ),
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  margin: EdgeInsets.fromLTRB(10,10,10,0),
                  child: Stack(
                    children: [
                      Image.asset("bg.jpg"),
                      Positioned(
                          child: Icon(Icons.person, size: 100,),
                          top: 125,
                          left: 125,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Host of this app", style: TextStyle(fontSize: 30),),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30,10,30,5),
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue,
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("Add to story", style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30,10,30,5),
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black26,
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("Edit profile", style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  child: Text("New", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  margin: EdgeInsets.fromLTRB(20, 5, 0, 10),
                ),
                ListTile(
                  leading: Icon(Icons.person, size:40),
                  title: Text("Anonymous likes your post", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  subtitle: Text("1m", style: TextStyle(fontSize: 17),),
                  onTap: (){},
                  tileColor: Colors.lightBlueAccent,
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                TextField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}