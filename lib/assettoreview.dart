import 'package:flutter/material.dart';

class AssettoReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assetto Corsa Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 490, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/assettocorsa.gif'), // Replace this with your actual image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Assetto Corsa',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Assetto Corsa (Italian for "Race Setup") is a sim racing video game developed by the Italian video game developer Kunos Simulazioni. It is a racing simulation that attempts to offer a realistic driving experience with a variety of road and race cars through detailed physics and tyre simulation on race tracks recreated through laser-scanning technology.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Reviews:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'I really enjoy this game. The car sounds are really realistic and the best out of all car games. Graphics I would give a 7.7/10 and I really do wish for some other elements in the game to make it realistic. Like for example, crowds are cheering on or theres white blinks in the stands where they are. (When they take pictures). Or like when the people in orange jackets are watching the race track in Nurburgring, there can be a slight animation of them like looking. Or when you arrive to the pit stop they can ACTUALLY perform on the vehicle instead of just standing there. I also do wish there was a 360 view of the car in 3rd person or 1st person too. I also really want weather like rain, snow, storm which would make the game highly 5x more better.',
                    4, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'One of the few games I bought. So many cars and DLC. Sadly not as popular as Forza or F1 so this makes it hard to find suitable online races. I found this game to be very hard to play with controller compared to Forza. If you have a steering wheel this game is must have, fun to drive, the affordable base and DLC content is very worth the money. Support the devs.',
                    5, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Absolutely stunning Game, obviously its not perfect, graphics feel a bit cartoonist and the selection of tracks is pretty poor but it has an amazing realistic feel and the car sounds are best I\'ve heard from any game I\'ve played. Well worth upgrading to Ultimate Edtion as well.',
                    3.5, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'The game doesn\'t have many cars or tracks but they are good quality and there are heaps of free mods. Get Content Manager and custom shaders patch, just look around for mods on the internet you will find websites with heaps of car and/or tracks. Great physics, just setup the wheel how you like it. If you don\'t feel like spending as much money posted on the game now the are sales on \'big\' holidays like Christmas and Easter on Steam.',
                    4.5, // Rating, you can adjust this value
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReview(String text, double stars) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < stars.floor() ? Icons.star : Icons.star_half,
              color: Colors.amber,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
