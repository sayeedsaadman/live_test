import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherMainScreen extends StatefulWidget {
  const WeatherMainScreen({super.key});

  @override
  State<WeatherMainScreen> createState() => _WeatherMainScreenState();
}

class _WeatherMainScreenState extends State<WeatherMainScreen> {

  List<Map<String , dynamic>> weatherData = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: weatherData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(3),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "City: ${weatherData[index]['city']}",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Temperature: ${weatherData[index]["temperature"]}°C",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Condition: ${weatherData[index]["condition"]}",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Humidity: ${weatherData[index]["humidity"]}%",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Wind Speed: ${weatherData[index]["windSpeed"]} m/s",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}