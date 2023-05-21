import 'package:flutter/material.dart';
import 'package:table_flutter/week_rasp/friday_rasp/IvtFriday.dart';
import 'package:table_flutter/week_rasp/thursday_rasp/IVT_thursday.dart';
import 'package:table_flutter/week_rasp/tuesday_rasp/IVT_Tuesday.dart';
import 'package:table_flutter/week_rasp/wednesday_rasp/Ivt_wednesday.dart';
import '../week_rasp/monday_rasp/IVT_Monday.dart';

class IVTBottomBar extends StatelessWidget {
  IVTBottomBar({Key? key});

  // List<Icon> icons = [Icon(Icons.alarm),Icon(Icons.alarm),Icon(Icons.alarm),];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff2D2F2E), Color(0xff767674)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
      ),
      height: MediaQuery.of(context).size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IvtMonday()));
              },
              child: Text(
                "ПН",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IVTTuesday()));
              },
              child: Text("ВТ",
                  style: TextStyle(fontSize: 20, color: Colors.white))),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IvtWednesday()));
              },
              child: Text("СР",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ))),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IVTThursday()));
              },
              child: Text("ЧТ",
                  style: TextStyle(fontSize: 20, color: Colors.white))),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IVTFriday()));
              },
              child: Text("ПТ",
                  style: TextStyle(fontSize: 20, color: Colors.white))),
        ],
      ),
    );
  }
}
