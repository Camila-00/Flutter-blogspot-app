import 'package:flutter/material.dart';

class TimeReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Crisis Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/timebanner.png'),
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
                    'Time Crisis',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Time Crisis is a 3D first-person rail shooter in which the player holds a light gun and goes through the motions of firing at on-screen enemies. It is best known for its cover system (shoot & hide), allowing players to duck behind cover to avoid enemy fire and reload their weapon.',
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
                    'The story to Time Crisis is, admittedly, pretty placeholder, but serves to set up conflict against a variety of deadly enemies. It\'s pretty brilliant. If you\'re looking for a really fun, really accurate gun game, this one can\'t be beat.',
                    5,
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Time Crisis isn\'t exactly gaming\'s Hamlet, but Razing Storm is actually a lot more dumbed down than Time Crisis 4. Deadstorm Pirates is the third game and requires a big install. It\'s Time Crisis with pirates. 3.5 star icon',
                    3.5,
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'This is easily one of my the best light-gun shooters of all time. Playing with a friend is the real bread and butter of this genre, and that should tell you how incredible Time Crisis is. The lack of this option isn’t enough to ruin the experience. If you have even a vague interest in the genre then this is the one to play.',
                    4.5,
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Time Crisis is a really good looking game by PS1 standards. It was released just a year earlier in arcades and it thankfully did not have to be noticeably scaled back. Characters do look a little blocky, and feature few frames of animation, but they move smoothly. The scenery is highly detailed. The soundtrack is pretty fast-paced and catchy but there’s only a few songs in the game.',
                    5,
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'The thing that holds Time Crisis back is that it lacks multiplayer. Few things are more entertaining than a light-gun shooter with a friend, and this just doesn’t offer that experience. There’s a time attack mode and even a special arranged version of the main game featuring new and alternate paths which unlock depending on how you play.',
                    2.5,
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
