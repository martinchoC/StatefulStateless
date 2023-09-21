import 'package:flutter/material.dart';
import 'dart:async';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int _time = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _time++;
      setState(() {});
      if (_time > 10) {
        _time = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '$_time',
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
