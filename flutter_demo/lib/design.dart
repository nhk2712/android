import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

bool signedIn = false;
Color bg = Color.fromRGBO(240, 240, 240, 1);

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "MyApp",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          Builder(
            builder: (BuildContext context) {
              if (signedIn == true) {
                return Icon(
                  Icons.account_circle,
                  color: Colors.black,
                );
              }
              return IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              );
            },
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            splashColor: Colors.transparent,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(),
      body: Body(),
    );
  }
}

TextStyle tile() {
  return TextStyle(
    fontSize: 20,
  );
}

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Sleep(),
            Activities(),
          ],
        ),
        Suggest(),
      ],
    );
  }
}

class Sleep extends StatelessWidget {
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      splashColor: Colors.transparent,
      padding: EdgeInsets.all(10),
      onPressed: () {},
      child: Container(
        height: 162,
        width: (MediaQuery.of(context).size.width - 60) / 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sleep time", style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("8 hrs", style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.nights_stay,
                size: 50,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Activities extends StatelessWidget {
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      splashColor: Colors.transparent,
      padding: EdgeInsets.all(10),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Ahihi()));
      },
      child: Container(
        width: (MediaQuery.of(context).size.width - 60) / 2,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.directions_run,
                      size: 30,
                      color: Colors.teal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.directions_bike,
                      size: 30,
                      color: Colors.brown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.rowing,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      "Running",
                      textAlign: TextAlign.left,
                      style: tile(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      "Cycling",
                      textAlign: TextAlign.left,
                      style: tile(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      "Rowing",
                      textAlign: TextAlign.left,
                      style: tile(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Suggest extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(10),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            splashColor: Colors.transparent,
            padding: EdgeInsets.all(10),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Suggested activities",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "of the day",
                      style: TextStyle(color: Colors.black, fontSize: 23),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "Let's go out and do something!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.directions_run,
                            size: 50, color: Colors.green),
                        Icon(Icons.directions_bike,
                            size: 50, color: Colors.yellow),
                        Icon(
                          Icons.hiking,
                          size: 50,
                          color: Colors.blue,
                        ),
                        Icon(Icons.sports_basketball,
                            size: 50, color: Colors.orange),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Ahihi extends StatefulWidget {
  State<Ahihi> createState() => DoActivity();
}

class DoActivity extends State<Ahihi> {
  final StopWatchTimer stopWatchTimer = StopWatchTimer();
  final isHour = false;
  final isMs = false;

  void dispose() {
    super.dispose();
    stopWatchTimer.dispose();
  }

  String greenButton = "Start";
  Color startButton = Colors.green;
  Color pauseButton = Colors.grey;
  Color stopButton = Colors.grey;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "Do activities",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
                stream: stopWatchTimer.rawTime,
                initialData: stopWatchTimer.rawTime.value,
                builder: (context, snapshot) {
                  final value = snapshot.data;
                  final displayTime = StopWatchTimer.getDisplayTime(value!,
                      hours: isHour, milliSecond: isMs);
                  return Text(
                    displayTime,
                    style: clockStyle(),
                  );
                }),
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: startButton,
              ),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    greenButton = "Start";
                    startButton = Colors.grey;
                    pauseButton = Colors.orangeAccent;
                    stopButton = Colors.red;
                  });
                  stopWatchTimer.onExecute.add(StopWatchExecute.start);
                },
                child: Text(
                  "$greenButton exercising",
                  style: buttonStyle(),
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: pauseButton,
              ),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: FlatButton(
                onPressed: () {
                  stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                  setState(() {
                    greenButton = "Resume";
                    startButton = Colors.green;
                    pauseButton = Colors.grey;
                  });
                },
                child: Text(
                  "Pause exercising",
                  style: buttonStyle(),
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: stopButton,
              ),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: FlatButton(
                onPressed: () {
                  stopWatchTimer.onExecute.add(StopWatchExecute.lap);
                  stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                  setState(() {
                    greenButton = "Start";
                  });
                  startButton = Colors.green;
                  pauseButton = Colors.grey;
                  stopButton = Colors.grey;
                },
                child: Text(
                  "Stop exercising",
                  style: buttonStyle(),
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle clockStyle() {
  return TextStyle(
    fontSize: 80,
    color: Colors.black,
    letterSpacing: 5,
  );
}

TextStyle buttonStyle() {
  return TextStyle(
    fontSize: 25,
    color: Colors.white,
  );
}

class SignIn extends StatefulWidget {
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  bool hehe = true;
  bool see = false;

  view(bool? value) {
    if (see == false) {
      setState(() {
        see = true;
        hehe = false;
      });
    } else {
      setState(() {
        see = false;
        hehe = true;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          splashColor: Colors.transparent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Icon(
              Icons.account_circle,
              color: Colors.black54,
              size: 130,
            ),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(fontSize: 17),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 17),
                  ),
                  Divider(
                    color: Colors.transparent,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 17),
                  ),
                  TextFormField(
                    obscureText: hehe,
                    style: TextStyle(fontSize: 17),
                  ),
                  Divider(
                    color: Colors.transparent,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: see,
                        onChanged: view,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Show password",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(43, 10, 0, 0),
                    child: InkWell(
                      child: Text("Forgot password?",
                        style: TextStyle(fontSize: 20, color: Colors.blue, decoration: TextDecoration.underline),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Text("Sign in",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        splashColor: Colors.transparent,
                        color: Colors.blue,
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text("Sign up",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        splashColor: Colors.transparent,
                        color: Colors.black26,
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
