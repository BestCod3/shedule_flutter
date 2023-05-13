import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/CustomAppBar/Drawer.dart';
import 'package:table_flutter/bottombar/bottomBar.dart';
import 'package:table_flutter/pages/Temirov.dart';
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
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
        drawer: DrawerSplashMenu(),
        appBar: CustomAppBar(height: 150),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(text: "Ногоев Г.Д.", onTap: () {}),
              CustomContainer(
                  text: "Касымалиев Т.К.",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Temirov()));
                  }),
              CustomContainer(text: "Шекеев К.", onTap: () {}),
              CustomContainer(text: "Жекшенова А.", onTap: () {}),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
