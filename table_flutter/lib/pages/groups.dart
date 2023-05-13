import 'package:flutter/material.dart';
import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/CustomAppBar/Drawer.dart';
import 'package:table_flutter/bottombar/bottomBar.dart';
import 'package:table_flutter/widgets/CustomContainer.dart';
import 'package:table_flutter/widgets/groups/IVT/IVT_SHEDULE.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
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
              CustomContainer(
                  text: "ИВТ",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IvtShedule(),
                      ),
                    );
                  }),
              CustomContainer(text: "ПИ", onTap: () {}),
              CustomContainer(text: "БИ", onTap: () {}),
              CustomContainer(text: "ИБ", onTap: () {}),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
