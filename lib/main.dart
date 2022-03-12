import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/loading.dart';
import './pages/select_location.dart';
void main()=>runApp(
  MaterialApp(
    initialRoute: "/loading",
    routes: {
      "/":(context)=>Home(),
      "/loading":(context)=>Loading(),
      "/location":(context)=>Location()
    },
  )
);