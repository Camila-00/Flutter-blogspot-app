import 'dart:async';
import 'package:marquee/marquee.dart';
import 'package:flutter/material.dart';

import 'assettoreview.dart';
import 'pokemonreview.dart';
import 'tekken7review.dart';
import 'timereview.dart';
import 'valorantreview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        hintColor: Colors.lightBlue,
        scaffoldBackgroundColor: Color(0xFFfce89f),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.lightBlue),
          bodyText1: TextStyle(color: Colors.lightBlue),
        ),
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/valorantreviews': (context) => ValorantReviews(),
        '/tekken7review': (context) => Tekken7Reviews(),
        '/pokemonreview': (context) => PokemonReviews(),
        '/assettoreview': (context) => AssettoReviews(),
        '/timereview': (context) => TimeReviews(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfce89f),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/MAINLOGO.png',
              width: 500,
              height: 500,
            ),
            SizedBox(height: 20),
            Text(
              'The Gaming Odyssey',
              style: TextStyle(
                fontSize: 50,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Register'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/welcome');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the Gaming Odyssey Homepage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
              child: Marquee(
                text: 'Welcome to the ZONE - A Gaming Blog and Review Space',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                ),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 20.0,
                velocity: 100.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                accelerationDuration: Duration(seconds: 1),
                accelerationCurve: Curves.linear,
                decelerationDuration: Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explore the world of gaming through our reviews and articles!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightBlue,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                children: [
                  GamePoster(
                    title: 'VALORANT',
                    imagePath: 'assets/poster1.png',
                    routeName: '/valorantreviews',
                  ),
                  GamePoster(
                    title: 'Tekken 7',
                    imagePath: 'assets/poster2.png',
                    routeName: '/tekken7review',
                  ),
                  GamePoster(
                    title: 'Pokemon Yellow',
                    imagePath: 'assets/poster3.png',
                    routeName: '/pokemonreview',
                  ),
                  GamePoster(
                    title: 'Assetto Corsa',
                    imagePath: 'assets/poster4.png',
                    routeName: '/assettoreview',
                  ),
                  GamePoster(
                    title: 'Time Crisis',
                    imagePath: 'assets/poster5.png',
                    routeName: '/timereview',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GamePoster extends StatelessWidget {
  final String title;
  final String imagePath;
  final String routeName;

  const GamePoster({
    required this.title,
    required this.imagePath,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue),
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, routeName);
            },
            child: Text('View Reviews for $title'),
          ),
        ],
      ),
    );
  }
}
