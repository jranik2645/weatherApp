
import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_bg.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
import 'package:weather_app/model/weather_model.dart';

class TodaysWeather extends StatelessWidget {
    final WeatherModel? weatherModel;

  const TodaysWeather({super.key,required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
            WeatherBg(
                weatherType: WeatherType.heavySnow,
                width: double.infinity,
                height: 300,

            ),
       ],
    );
  }
}

