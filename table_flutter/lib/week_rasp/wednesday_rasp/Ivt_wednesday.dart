import 'package:flutter/material.dart';

import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/bottombar/IVTBottomBar.dart';

import 'package:table_flutter/week_rasp/wednesday_rasp/lessonWednesday_1.dart';
import 'package:table_flutter/week_rasp/wednesday_rasp/lessonWednesday_2.dart';
import 'package:table_flutter/week_rasp/wednesday_rasp/lessonWednesday_3.dart';
import 'package:table_flutter/week_rasp/wednesday_rasp/lessonWednesday_4.dart';

import '../../CustomAppBar/Drawer.dart';

class IvtWednesday extends StatefulWidget {
  IvtWednesday({
    Key? key,
  });

  @override
  State<IvtWednesday> createState() => _IvtMondayState();
}

class _IvtMondayState extends State<IvtWednesday> {
  // Map<String, dynamic> _data ={};;

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
              LessonWednesday1(),
              LessonWednesday2(),
              LessonWednesday3(),
              LessonWednesday4(),
            ],
          ),
        ),
        bottomNavigationBar: IVTBottomBar(),
      ),
    );
  }
}
