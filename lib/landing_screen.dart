import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'category_box.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              CategoryBox(
                pic: MaterialCommunityIcons.ruler,
                text: 'Length',
                rang: Colors.teal,
                action: () {
                  Future.delayed(const Duration(milliseconds: 165), () {
                    Navigator.pushNamed(context, '/lengthScreen');
                  });
                  
                },
              ), // Length Box

              CategoryBox(
                pic: MaterialCommunityIcons.weight,
                text: 'Weight',
                rang: Colors.orangeAccent,
                action: () {
                   Future.delayed(const Duration(milliseconds: 165), () {
                    Navigator.pushNamed(context, '/weightScreen');
                  });
                  
                },
              ), // Weight Box

              CategoryBox(
                pic: FontAwesome5Solid.temperature_high,
                text: 'Temperature',
                rang: Colors.blueAccent,
                action: () {
                   Future.delayed(const Duration(milliseconds: 165), () {
                   Navigator.pushNamed(context, '/temperatureScreen');
                  });
                },
              ), // Temp Box

              CategoryBox(
                pic: MaterialIcons.attach_money,
                text: 'Currency',
                rang: Colors.redAccent,
                action: () {
                  Future.delayed(const Duration(milliseconds: 165), () {
                   Navigator.pushNamed(context, '/currencyScreen');
                  });
                },
              ), // Currency Box
            ],
          ),
        ),
      ),
    );
  }
}
