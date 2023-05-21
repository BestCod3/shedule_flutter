import 'package:flutter/material.dart';
import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/CustomAppBar/Drawer.dart';
import 'package:table_flutter/bottombar/bottomBar.dart';
import 'package:table_flutter/week_rasp/monday_rasp/IVT_Monday.dart';
import 'package:table_flutter/widgets/CustomContainer.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2D2F2E),
        drawer: DrawerSplashMenu(),
        appBar: CustomAppBar(height: 150),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                    text: "ИВТ",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IvtMonday(),
                        ),
                      );
                    }),
                SizedBox(
                  height: 30,
                ),
                CustomContainer(text: "ПИ", onTap: () {}),
                SizedBox(
                  height: 30,
                ),
                CustomContainer(text: "БИ", onTap: () {}),
                SizedBox(
                  height: 30,
                ),
                CustomContainer(text: "ИБ", onTap: () {}),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
