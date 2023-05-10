import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key});

  // List<Icon> icons = [Icon(Icons.alarm),Icon(Icons.alarm),Icon(Icons.alarm),];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.alarm),),      
              IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month),),
           // FloatingActionButton(onPressed: (){}, child: Icon(Icons.search), backgroundColor: Colors.amber,),
              IconButton(onPressed: (){}, icon: Icon(Icons.account_box),),      
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none),),      
        ],
      ),
    );
  }
}
