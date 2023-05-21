import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LessonThursday3 extends StatefulWidget {
  LessonThursday3({Key? key});

  @override
  _LessonTuesday1State createState() => _LessonTuesday1State();
}

class _LessonTuesday1State extends State<LessonThursday3> {
  String _subject = '';
  String _group = '';
  String _subjecttype = '';
  String _days = '';
  String _time = '';
  String _room = '';
  void initState() {
    showWeatherByLocation();
    super.initState();
  }

  Future<void> showWeatherByLocation() async {
    await getData();
  }

  Future<void> getData() async {
    try {
      final client = http.Client();
      final url = 'http://172.20.10.14:8000/api/rasp/detail/15/';
      Uri uri = Uri.parse(url);
      final result = await client.get(uri);
      utf8.decode(result.bodyBytes);
      final jsonResult = jsonDecode(utf8.decode(result.bodyBytes));

      _group = jsonResult['group'];
      _subject = jsonResult['subject'];
      _subjecttype = jsonResult['subject_type'];
      _days = jsonResult['days'];
      _time = jsonResult['time'];
      _room = jsonResult['room'];
      log('response ===> ${jsonResult}');
      setState(() {});

      log('response ==> ${result.body}');
      log('response json ==> ${jsonResult}');
    } catch (e) {
      log('$e');
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey, Colors.white],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _time,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _subject,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                _subjecttype,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                _group,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
          Text(
            _room,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
