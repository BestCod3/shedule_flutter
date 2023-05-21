import 'package:flutter/material.dart';
import 'package:table_flutter/pages/homePage.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  CustomAppBar({Key? key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
            gradient: LinearGradient(
                colors: [Color(0xff2D2F2E), Color(0xff767674)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(200),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(children: [
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.table_view_rounded, color: Colors.white),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
