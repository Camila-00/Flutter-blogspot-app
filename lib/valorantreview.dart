import 'package:flutter/material.dart';

class ValorantReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valorant Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 400, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/valorantbanner2.gif'), // Replace this with your actual image asset
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
                    'VALORANT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "VALORANT is a character-based 5v5 tactical shooter set on the global stage. Outwit, outplay, and outshine your competition with tactical abilities, precise gunplay, and adaptive teamwork. ",
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
                    'The world of online gaming is vast and diverse. Among the multitude of choices, Valorant has emerged as a true titan in the gaming industry. Developed by Riot Games, Valorant stands as the best game ever for several compelling reasons.',
                    5, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Valorant is one of those Counter Strike type of games but playing a group of preset characters with their unique abilities. It is solid in terms of gunplay and balanced abilities.',
                    3, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Highly rate this game as an experienced CSGO streamer for 8 years. Valorant brings very crafted gameplay with a close similar shooting mechanic to CSGO whilst adding more technical ability which I consider to be an advanced version of utility in the round. Currently Valorant runs very well on mid and high end systems (reports tell me just as good on low end systems as well). Vanguard brings high grade anti cheat but currently has known annoyances to everyday apps such as apps like discord that use global binds, motherboard and chipset controller software such as RGB controls for fans and monitoring software. I would hope in due course they will add a whitelist to allow certain trusted applications to pass through. I vote however while Vanguard continues to prevent most cheaters from been able to play the game undetected from cheats I accept its current state, but for many others they will not. Great game, exactly what the scene needed.',
                    5, // Rating, you can adjust this value
                  ),
                  _buildReview(
                    "Valorant has excellent gun play with CS:GO style mechanics but it adds another layer of interesting plays with each agent (character) abilities. If you're a fan of Counter-Strike style FPS, I think you'll really enjoy Valorant. It takes a few hours of playing to get into the flow as you learn the maps and abilities so don't get disappointed if you get stomped on the first day or two you play! Give it time and you'll start really enjoying it.",
                    3, // Rating, you can adjust this value
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReview(String text, int stars) {
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
            stars,
            (index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
