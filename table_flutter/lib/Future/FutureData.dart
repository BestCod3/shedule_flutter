// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;
// import 'package:geolocator/geolocator.dart';

// Future<void> getWeather(Position position) async {
//   final String cityName = "";
//     try {
//       final client = http.Client();
 
//       final url =
//           'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=${ApiKeys.MyApiKey}';
//       Uri uri = Uri.parse(url);
//       final result = await client.get(uri);
//       final jsonResult = jsonDecode(result.body);
//       cityName = jsonResult['name'];
//       log('response ===> ${jsonResult['name']}');
      

//       // log('response ==> ${result.body}');
//       // log('response json ==> ${jsonResult}');
//     } catch (e) {
//       throw Exception(e);
//     }
//   }