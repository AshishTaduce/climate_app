import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        fontSize: 72,
        color: Colors.white,
        fontWeight: FontWeight.bold,
    );
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(

            image: DecorationImage(
              image : AssetImage('assets/AMOLED Wallpaper.jpg'),
              fit: BoxFit.fill,
            )

        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.near_me,
                      color: Colors.white,
                    size: 35,),
                    Icon(Icons.business,
                      color: Colors.white,
                    size: 35,)
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Text ( "32 \u00b0 ",
                    textAlign: TextAlign.left,
                    style: style,
                    ),
                    Text ( "☀️",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 48
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: screenHeight* 0.2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Wrap(
                  children: <Widget>[
                    Text ('Its 🍦 time in Bhopal! ',
                      style: style,
                      textAlign: TextAlign.right,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
