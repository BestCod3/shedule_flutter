import 'package:flutter/material.dart';
import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/CustomAppBar/Drawer.dart';
import 'package:table_flutter/bottombar/IVTBottomBar.dart';

import 'lessonThursday_1.dart';
import 'lessonThursday_2.dart';
import 'lessonThursday_3.dart';
import 'lessonThursday_4.dart';

class IVTThursday extends StatefulWidget {
  const IVTThursday({Key? key}) : super(key: key);

  @override
  _IVTTuesdayState createState() => _IVTTuesdayState();
}

class _IVTTuesdayState extends State<IVTThursday> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
        drawer: DrawerSplashMenu(),
        appBar: CustomAppBar(height: 200),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LessonThursday1(),
              LessonThursday2(),
              LessonThursday3(),
              LessonThursday4(),
            ],
          ),
        ),
        bottomNavigationBar: IVTBottomBar(),
      ),
    );
  }
}
