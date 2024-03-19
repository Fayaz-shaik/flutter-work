import 'dart:convert';
//import 'dart:js_interop';
import 'dart:ui';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/hourly_widget.dart';
import 'package:weather_app/additonal_info_widget.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/secrets.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

String place = 'Bombay';

class _WeatherScreenState extends State<WeatherScreen> {
  //bool isLoading = falsE

  late Future<Map<String, dynamic>> weatherFn;
  Future<Map<String, dynamic>> getWeather() async {
    try {
      final res = await http.get(
        Uri.parse(
            "https://api.openweathermap.org/data/2.5/forecast?q=$place&APPID=$key"),
      );

      final data = jsonDecode(res.body);
      //print(data["weather"][0]["main"]);

      if (data['cod'] != "200") {
        print("Invalid");
        throw data['message'];
      }
      //isLoading = true;

      //print(data);
      return data;
    } catch (e) {
      print(e.toString());
      throw e.toString();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weatherFn = getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          // GestureDetector(
          //   onTap : () {
          //     print("refresh");
          //   },
          //   child: const Icon(Icons.refresh),
          // ),
          IconButton(
            onPressed: () {
              setState(() {
                weatherFn = getWeather();
              });
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: FutureBuilder(
        future: weatherFn,
        builder: (context, snapshot) {
          //print(snapshot.runtimeType);
          //print(snapshot);
          if (snapshot.hasError) {
            print("Inside snapshot check");
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }

          final weatherData = snapshot.data;
          final currWeather = weatherData?["list"][0];
          final currTemp = currWeather['main']['temp'];
          final currentSky = currWeather['weather'][0]['main'];
          final currPressure = currWeather['main']['pressure'];
          final currWind = currWeather['wind']['speed'];
          final currHumididty = currWeather['main']['humidity'];
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Card(
                      elevation: 20,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  "$place : $currTemp F",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  (currentSky == "Clouds" ||
                                          currentSky == "Rainy")
                                      ? Icons.cloud
                                      : Icons.sunny,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Rain",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Weather ForeCast",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      final hourlyForecast = weatherData?['list'][index + 1];
                      final time = DateTime.parse(hourlyForecast['dt_txt']);
                      final tempe = "${hourlyForecast['main']['temp']} K";
                      final weath = hourlyForecast["weather"][0]['main'];

                      return HourlyWidget(
                        time: DateFormat.Hm().format(time).toString(),
                        icon: (weath == "Clouds" || weath == "Rainy")
                            ? Icons.cloud
                            : Icons.sunny,
                        temperature: tempe,
                      );
                    },
                  ),
                ),

                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       //1
                //       for (int i = 0;i<5;i++)

                //       HourlyWidget(

                //         time: (weatherData?['list'][i+1]['dt']).toString(),
                //         icon: (weatherData?['list'][i+1]['weather'][0]['main']=="Clouds" || weatherData?['list'][i+1]['weather'][0]['main']=="Rainy")?Icons.cloud:Icons.sunny,
                //         temperature: "${weatherData?['list'][i+1]['main']['temp']} K",
                //       )
                //     //2

                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Additional Information",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    additional_info_widget(
                      icon: Icons.water_drop,
                      label: "Humidity",
                      value: currHumididty.toString(),
                    ),
                    additional_info_widget(
                      icon: Icons.air,
                      label: "Wind Speed",
                      value: currWind.toString(),
                    ),
                    additional_info_widget(
                      icon: Icons.beach_access,
                      label: "Pressure",
                      value: currPressure.toString(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
