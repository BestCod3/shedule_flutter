
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:table_flutter/ApiKeys/apikey.dart';
import 'package:table_flutter/CustomAppBar/CustomAppBar.dart';
import 'package:table_flutter/bottombar/bottomBar.dart';
import 'package:table_flutter/pages/Temirov.dart';
import 'package:table_flutter/widgets/CustomContainer.dart';

class Teachers extends StatefulWidget {
const Teachers({ Key? key });

  @override
  State<Teachers> createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
//   String  cityName="";
//   void initState() {
//   showWeatherByLocation();
//     super.initState();
//   }
//  Future<void> showWeatherByLocation() async{
//      final position = await _getPosition();
//     await getWeather(position);
//     log("latitude ==> ${position.latitude}");
//     log("longitude ==> ${position.longitude}");
//   }

  

// Future<void> getWeather(Position position) async {
  
 
//     try {
//       final client = http.Client();
 
//       final url =
//           'https://api.openweathermap.org/data/2.5/weather?lat=37.4133351&lon=-122.081267&appid=${ApiKeys.MyApiKey}';

//       Uri uri = Uri.parse(url);
//       final result = await client.get(uri);
//       final jsonResult = jsonDecode(result.body);
//       cityName = jsonResult['name'];
//       log('response ===> ${jsonResult['name']}');
//       setState(() {});
      

//       log('response ==> ${result.body}');
//       log('response json ==> ${jsonResult}');
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   @override
//   Future<Position> _getPosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Test if location services are enabled.
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       // Location services are not enabled don't continue
//       // accessing the position and request users of the
//       // App to enable the location services.
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         // Permissions are denied, next time you could try
//         // requesting permissions again (this is also where
//         // Android's shouldShowRequestPermissionRationale
//         // returned true. According to Android guidelines
//         // your App should show an explanatory UI now.
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       // Permissions are denied forever, handle appropriately.
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }

//     // When we reach here, permissions are granted and we can
//     // continue accessing the position of the device.
//     return await Geolocator.getCurrentPosition();
//   }

  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
      drawer: Drawer(),
      appBar: CustomAppBar(height: 150),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          CustomContainer(text: "Турганбаева Н.Ж", onTap: (){}),
          CustomContainer(text: "Темиров М.", onTap: ()
            {
Navigator.push(context, MaterialPageRoute(builder: (context) => Temirov()));
            }
          ),
          CustomContainer(text: "Болотбаев Д.С.", onTap: (){}),
          CustomContainer(text: "Дакинова З.К.", onTap: (){}),
         
        ],),
      ),
      bottomNavigationBar: BottomBar(),
      ),
    );
  }
}