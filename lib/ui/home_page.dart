import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/service/api_service.dart';
import 'package:weather_app/ui/compents/todays_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
     ApiService apiService =ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Flutter Weather App'),centerTitle: true,),
      body:SafeArea(
         child: FutureBuilder(
            builder: (context ,snapshot) {
              if (snapshot.hasData) {
                WeatherModel? weatherModel = snapshot.data;
                return TodaysWeather(weatherModel: weatherModel);
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text('ERROR  HAS OCCURED'),
                );
              }
              return Center(
                  child: CircularProgressIndicator(),
              );
            },

            future:  apiService.getWeatherData("Dhaka"),
         ),
      )
    );
  }
}

