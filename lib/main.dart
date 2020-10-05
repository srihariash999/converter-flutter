import 'package:converterinator_3000/currency_converter.dart';
import 'package:converterinator_3000/length_converter.dart';
import 'package:converterinator_3000/temperature_converter.dart';
import 'package:converterinator_3000/weight_converter.dart';
import 'package:flutter/material.dart';
import 'landing_screen.dart';

void main() => runApp(Converter());

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Converter 3000",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/' : (context) => LandingScreen(),
        '/lengthScreen': (context) => LengthConverter(),
        '/weightScreen': (context) => WeightConverter(),
        '/temperatureScreen': (context) => TemperatureConverter(),
        '/currencyScreen': (conrext) => CurrencyConverter(),
      },
    );
  }
}
