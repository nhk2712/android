import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Clock(),
      ),
    );
  }
}

class Clock extends StatefulWidget {
  Clock({Key? key}) : super(key: key);

  State<Clock> createState() => ClockState();
}

class ClockState extends State<Clock> {
  final StopWatchTimer stopWatchTimer = StopWatchTimer();
  final isHour = true;
  final scrollController = ScrollController();

  void dispose() {
    super.dispose();
    stopWatchTimer.dispose();
    scrollController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder<int>(
            stream: stopWatchTimer.rawTime,
            initialData: stopWatchTimer.rawTime.value,
            builder: (context, snapshot) {
              final value = snapshot.data;
              final displayTime =
                  StopWatchTimer.getDisplayTime(value!, hours: isHour);
              return Text(
                displayTime,
                style: clockStyle(),
              );
            }),
        Container(
          margin: EdgeInsets.fromLTRB(20, 90, 20, 0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green,
                ),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: FlatButton(
                  onPressed: () {
                    stopWatchTimer.onExecute.add(StopWatchExecute.start);
                  },
                  onLongPress: () {
                    stopWatchTimer.onExecute.add(StopWatchExecute.lap);
                  },
                  child: Text(
                    "Start",
                    style: buttonStyle(),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: FlatButton(
                  onPressed: () {
                    stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                  },
                  child: Text(
                    "Stop",
                    style: buttonStyle(),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black45,
                ),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: FlatButton(
                  onPressed: () {
                    stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                  },
                  child: Text(
                    "Reset",
                    style: buttonStyle(),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),

      ],
    );
  }
}

TextStyle buttonStyle() {
  return TextStyle(
    fontSize: 25,
    color: Colors.white,
  );
}

TextStyle clockStyle() {
  return TextStyle(
    fontSize: 50,
    color: Colors.black,
    letterSpacing: 5,
  );
}
