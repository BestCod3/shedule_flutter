import 'package:flutter/material.dart';
import 'package:table_flutter/week_rasp/friday_rasp/lessonFriday_1.dart';
import 'package:table_flutter/week_rasp/friday_rasp/lessonFriday_2.dart';
import 'package:table_flutter/week_rasp/friday_rasp/lessonFriday_3.dart';
import 'package:table_flutter/week_rasp/friday_rasp/lessonFriday_4.dart';

import '../../CustomAppBar/CustomAppBar.dart';
import '../../CustomAppBar/Drawer.dart';
import '../../bottombar/IVTBottomBar.dart';

class IVTFriday extends StatefulWidget {
  const IVTFriday({Key? key}) : super(key: key);

  @override
  _IVTTuesdayState createState() => _IVTTuesdayState();
}

class _IVTTuesdayState extends State<IVTFriday> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2D2F2E),
        drawer: DrawerSplashMenu(),
        appBar: CustomAppBar(height: 200),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LessonFriday1(),
              LessonFriday2(),
              LessonFriday3(),
              LessonFriday4(),
            ],
          ),
        ),
        bottomNavigationBar: IVTBottomBar(),
      ),
    );
  }
}
