import 'package:flutter/material.dart';
import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/bottombar/bottomBar.dart';
import 'package:table_flutter/pages/groups.dart';
import 'package:table_flutter/pages/teachers.dart';

import '../CustomAppBar/Drawer.dart';
import '../widgets/CustomContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
        drawer: DrawerSplashMenu(),
        appBar: CustomAppBar(height: 200),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                text: "teachers",
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Teachers(),
                      ),
                    );
                  });
                },
              ),
              SizedBox(height: 90),
              CustomContainer(
                  text: "Groups",
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Groups(),
                        ),
                      );
                    });
                  }),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
