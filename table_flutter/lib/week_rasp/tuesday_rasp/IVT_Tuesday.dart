import 'package:flutter/material.dart';
import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/CustomAppBar/Drawer.dart';
import 'package:table_flutter/bottombar/IVTBottomBar.dart';
import 'package:table_flutter/week_rasp/monday_rasp/lessonMonday_2.dart';
import 'package:table_flutter/week_rasp/tuesday_rasp/lessonTuesday_1.dart';
import 'package:table_flutter/week_rasp/tuesday_rasp/lessonTuesday_2.dart';
import 'package:table_flutter/week_rasp/tuesday_rasp/lessonTuesday_3.dart';
import 'package:table_flutter/week_rasp/tuesday_rasp/lessonTuesday_4.dart';

class IVTTuesday extends StatefulWidget {
  const IVTTuesday({Key? key}) : super(key: key);

  @override
  _IVTTuesdayState createState() => _IVTTuesdayState();
}

class _IVTTuesdayState extends State<IVTTuesday> {
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
              LessonTuesday1(),
              LessonTuesday2(),
              LessonTuesday3(),
              LessonTuesday4(),
            ],
          ),
        ),
        bottomNavigationBar: IVTBottomBar(),
      ),
    );
  }
}
