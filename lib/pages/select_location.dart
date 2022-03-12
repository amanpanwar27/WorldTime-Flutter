import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Text("select location"),
    ));
  }
}
