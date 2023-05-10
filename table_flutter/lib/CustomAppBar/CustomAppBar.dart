import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  CustomAppBar({Key? key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
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
                  icon: Icon(Icons.menu),
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
                  icon: Icon(Icons.table_view_rounded),
                  onPressed: () => Navigator.pop(context),
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
