import 'package:flutter/material.dart';

import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/bottombar/IVTBottomBar.dart';
import 'package:table_flutter/week_rasp/monday_rasp/lessonMonday_1.dart';
import 'package:table_flutter/week_rasp/monday_rasp/lessonMonday_2.dart';
import 'package:table_flutter/week_rasp/monday_rasp/lessonMonday_3.dart';
import 'package:table_flutter/week_rasp/monday_rasp/lessonMonday_4.dart';

import '../../CustomAppBar/Drawer.dart';

class IvtMonday extends StatefulWidget {
  IvtMonday({
    Key? key,
  });

  @override
  State<IvtMonday> createState() => _IvtMondayState();
}

class _IvtMondayState extends State<IvtMonday> {
  // Map<String, dynamic> _data ={};;

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
              LessonMonday1(),
              LessonMonday2(),
              LessonMonday3(),
              LessonMonday4(),
            ],
          ),
        ),
        bottomNavigationBar: IVTBottomBar(),
      ),
    );
  }
}
