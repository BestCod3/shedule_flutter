import 'package:flutter/material.dart';
import 'package:table_flutter/week_rasp/tuesday_rasp/IVT_Tuesday.dart';
import '../week_rasp/monday_rasp/IVT_Monday.dart';

class IVTBottomBar extends StatelessWidget {
  IVTBottomBar({Key? key});

  // List<Icon> icons = [Icon(Icons.alarm),Icon(Icons.alarm),Icon(Icons.alarm),];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IvtMonday()));
              },
              child: Text("ПН")),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IVTTuesday()));
              },
              child: Text("ВТ")),
          TextButton(onPressed: () {}, child: Text("СР")),
          TextButton(onPressed: () {}, child: Text("ЧТ")),
          TextButton(onPressed: () {}, child: Text("ПТ")),
        ],
      ),
    );
  }
}
