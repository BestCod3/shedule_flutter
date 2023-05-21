import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key});

  // List<Icon> icons = [Icon(Icons.alarm),Icon(Icons.alarm),Icon(Icons.alarm),];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.none),
        gradient: LinearGradient(
            colors: [Color(0xff2D2F2E), Color(0xff767674)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
      ),
      height: MediaQuery.of(context).size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.alarm,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_month, color: Colors.white),
          ),
          // FloatingActionButton(onPressed: (){}, child: Icon(Icons.search), backgroundColor: Colors.amber,),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_box, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
