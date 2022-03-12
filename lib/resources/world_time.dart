import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class WorldTime{
   late String location;
    late String Time;
    late String Flag;
  WorldTime(String loc,String flag){
    location = loc;
    Flag = flag;
  }
   Future<void> getTime () async{
     Response res=  await get(Uri.parse("http://worldtimeapi.org/api/timezone/$location"));
     Map data = json.decode(res.body);
     DateTime date = DateTime.parse(data['datetime']);
     Time = date.toString();
   }

}
