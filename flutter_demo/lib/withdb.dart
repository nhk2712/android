import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

Future<Album> fetchAlbum() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  late Future<Album> futureAlbum;

  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fetching data"),
        ),
        body: Center(

          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot){
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              }
              else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner
              // as this function mustn't return a null result.
              return CircularProgressIndicator();
            },
          ),

        ),
      ),
    );
  }
}

