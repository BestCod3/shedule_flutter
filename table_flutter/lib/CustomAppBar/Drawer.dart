import 'package:flutter/material.dart';

class DrawerSplashMenu extends StatelessWidget {
  const DrawerSplashMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: AssetImage('assets/images/drawImage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
