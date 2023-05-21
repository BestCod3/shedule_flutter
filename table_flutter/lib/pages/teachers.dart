import 'package:flutter/material.dart';

import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/CustomAppBar/Drawer.dart';
import 'package:table_flutter/bottombar/bottomBar.dart';

import 'package:table_flutter/week_rasp/friday_rasp/IvtFriday.dart';
import 'package:table_flutter/widgets/CustomContainer.dart';

class Teachers extends StatefulWidget {
  const Teachers({Key? key});

  @override
  State<Teachers> createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2D2F2E),
        drawer: DrawerSplashMenu(),
        appBar: CustomAppBar(height: 150),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(text: "Ногоев Г.Д.", onTap: () {}),
              SizedBox(
                height: 30,
              ),
              CustomContainer(
                  text: "Касымалиев Т.К.",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IVTFriday()));
                  }),
              SizedBox(
                height: 30,
              ),
              CustomContainer(text: "Шекеев К.", onTap: () {}),
              SizedBox(
                height: 30,
              ),
              CustomContainer(text: "Жекшенова А.", onTap: () {}),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
