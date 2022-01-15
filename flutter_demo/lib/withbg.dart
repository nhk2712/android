import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("beach.jpg"),
                fit:BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Center(
                child:Text("Our services", style: TextStyle(fontSize: 25),),
              ),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            body: ListView(
              children: [
                ListTile(
                  title: Text("Hotel", style: TextStyle(fontSize: 20),),
                  subtitle: Text("from 2USD/night"),
                  leading: Icon(Icons.hotel, color: Colors.blue, size:35),
                  tileColor: Colors.white70,
                  minVerticalPadding: 10,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Hotel()));},
                ),
                Divider(),
                ListTile(
                  title: Text("Restaurant", style: TextStyle(fontSize: 20),),
                  subtitle: Text("from 3USD/meal"),
                  leading: Icon(Icons.restaurant, color: Colors.blue, size:35),
                  tileColor: Colors.white70,
                  minVerticalPadding: 10,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Restaurant()));},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Hotel extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.white, size: 35,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text("Hotels"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Hehe hotel", style: TextStyle(fontSize: 20),),
            subtitle: Text("123 ABC Road"),
            leading: Icon(Icons.hotel, color: Colors.blue, size:35),
            tileColor: Colors.white70,
            minVerticalPadding: 10,
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Hehe_hotel()));},
          ),
          ListTile(
            title: Text("Lmao hotel", style: TextStyle(fontSize: 20),),
            subtitle: Text("Bruh Dark Road"),
            leading: Icon(Icons.hotel, color: Colors.blue, size:35),
            tileColor: Colors.white70,
            minVerticalPadding: 10,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

class Restaurant extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.white, size: 35,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text("Restaurants"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Hehe restaurant", style: TextStyle(fontSize: 20),),
            subtitle: Text("456 ABC Road"),
            leading: Icon(Icons.restaurant, color: Colors.blue, size:35),
            tileColor: Colors.white70,
            minVerticalPadding: 10,
            onTap: (){},
          ),
          ListTile(
            title: Text("Lmao restaurant", style: TextStyle(fontSize: 20),),
            subtitle: Text("Bruh Dark Road"),
            leading: Icon(Icons.restaurant, color: Colors.blue, size:35),
            tileColor: Colors.white70,
            minVerticalPadding: 10,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

class Hehe_hotel extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.white, size: 35,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text("Hehe hotel"),
        actions: [
          IconButton(
            onPressed: (){showDialog(context: context, builder: (context)=>Share());},
            icon: Icon(Icons.share, color: Colors.white,),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
        ],
      ),
      body:ListView(
        children: [
          Container(
            child: Image.asset("bg.jpg"),
          ),
          Container(
            child: Text("Hehe hotel", style: TextStyle(fontSize: 25),),
            decoration: BoxDecoration(

            ),
            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
          ),
          Container(
            child: Text("A beautiful hotel ran by a successful businessman", style: TextStyle(fontSize: 17, color: Colors.grey),),
            margin: EdgeInsets.fromLTRB(20, 5, 0, 20),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.blue,),
            title: Text("(123) - 456 7891", style: TextStyle(fontSize: 17),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.mail, color: Colors.blue,),
            title: Text("hotel@hehe.com", style: TextStyle(fontSize: 17),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.blue,),
            title: Text("123 ABC Road", style: TextStyle(fontSize: 17),),
            onTap: (){showDialog(context: context, builder: (context)=>Alert());},
          ),
          ListTile(
            leading: Icon(Icons.rss_feed, color: Colors.blue,),
            title: Text("hotel.hehe.com", style: TextStyle(fontSize: 17),),
            onTap: (){showDialog(context: context, builder: (context)=> Noti());},
          ),
        ],
      ),
    );
  }
}

class Noti extends StatelessWidget{
  Widget build(BuildContext context){
    return Dialog(
      child: Text("hi"),
    );
  }
}

class Share extends StatelessWidget{
  Widget build(BuildContext context){
    return SimpleDialog(
        children: [
          Container(
            child: Text("Share this item", style: TextStyle(fontSize: 25),),
            padding: EdgeInsets.fromLTRB(30,10,0,10),
          ),
          ListTile(
            title: Text("Facebook", style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.facebook, color: Colors.blue, size: 35,),
            onTap: (){},
          ),
        ],
    );
  }
}

class Alert extends StatelessWidget{
  Widget build(BuildContext context){
    return AlertDialog(
      title: Text("Wanna go to this place?", style: TextStyle(fontSize: 20),),
      content: Text("It would be very nice!", style: TextStyle(fontSize: 17),),
      actions: [
        TextButton(
          onPressed: (){Navigator.pop(context);},
          child: Text("Later", style: TextStyle(fontSize: 17),),
        ),
        TextButton(
          onPressed: (){},
          child: Text("Right now", style: TextStyle(fontSize: 17),),
        ),
      ],
      actionsOverflowDirection: VerticalDirection.down,
    );
  }
}