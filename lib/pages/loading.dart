import 'package:flutter/material.dart';
import '../resources/world_time.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading...';
  @override
  void setupWorldTime() async{
    WorldTime instance = WorldTime("Asia/Kolkata","");
    await instance.getTime();
    setState(() {
      time = instance.Time;
    });
  }
  void initState(){
    super.initState();
    setupWorldTime();
  }
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("$time"),
      )
    ));
  }
}
