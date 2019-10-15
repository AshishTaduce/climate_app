import 'package:climate_app/weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => LocationPage(),
        '/weather' : (context) => Weather(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    ),
  );
}
// Create WeatherPage in a separate file
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image : AssetImage('assets/hdc4zr5havh11.jpg'),
              fit: BoxFit.fill,
            )
          ),
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/weather');
                  },
                  child: Text(
                    'Get Weather',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                color: Colors.blue.withAlpha(0),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
