import 'package:cuaca_app/homepage.dart';
import 'package:cuaca_app/services/cuaca_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getDataCuaca();
    super.initState();
  }

  void getDataCuaca() async {
    var weatherData = await CuacaService().getCityWeather('Bogor');
    print(weatherData);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(weather: weatherData)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CuacaApp')),
    );
  }
}
