import'package:flutter/material.dart';

    void main(){
  runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
      const MyApp({super.key});

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      }
    }
    class HomeScreen extends StatefulWidget {
      const HomeScreen({super.key});

      @override
      State<HomeScreen> createState() => _HomeScreenState();
    }

    class _HomeScreenState extends State<HomeScreen> {

      List<Map<String, dynamic>> weatherData = [
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
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          body: ListView.builder(
            itemCount: weatherData.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('City : ${weatherData[index]['city']}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Temperature: ${weatherData[index]['temperature']}°C'),
                      Text('Condition: ${weatherData[index]['condition']}'),
                      Text('Humidity: ${weatherData[index]['humidity']}%'),
                      Text('Wind Speed: ${weatherData[index]['windSpeed']} km/h'),
                    ],
                  ),
                ),
              );
            },
          ),

        );
      }
    }

