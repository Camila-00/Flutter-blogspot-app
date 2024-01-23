import 'package:flutter/material.dart';

class Tekken7Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tekken 7 Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tekken7banner.gif'),
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
                    'Tekken 7',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Love, Revenge, Pride. Each one of us has a reason to fight. Values are what define us and make us human, regardless of our strengths or weaknesses. There are no wrong motives, just the paths we choose to take. Experience the epic conclusion of the Mishima clan and unravel the reasons behind each step of their ceaseless fight. Powered by Unreal Engine 4, TEKKEN 7 features stunning story-driven cinematic battles and intense duels that can be enjoyed with friends and rivals alike through innovative fight mechanics.',
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
                    'Tekken 7 is very much Tekken, exactly like you\'ve always known it. Luckily the game knows how to get maximum gain out of seemingly minimal additions, like the flashy Rage Arts, tactical Power Crushes and surprisingly spectacular presence of Street Fighter icon Akuma. But due to the pretentious and disappointing single-player content it will never be a classic.',
                    4, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'This is the pinnacle of the Tekken series – a joy to play, with a wealth of content, that\'s as challenging and precise for aficionados as it is inviting and engaging for neophytes. A masterpiece of the fighting genre.',
                    5, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Welcoming back old hands and encouraging newcomers, Tekken 7 beats its own path and ensures that you want to walk it, kicking various backsides along the way.',
                    4, // Rating, you can adjust this value
                  ),
                  _buildReview(
                    "Tekken 7 truly is a hallmark, a fighting game crafted with obvious affection. It strikes a fine balance between accessibility to series newcomers and retaining much of its technical traditions. The soundtrack is an electronic treat, and while the story can at times seem a bit cliche, the fact that it never takes itself too seriously lets it bring in a tremendous amount of flexible character customization. Its dedication to the details helps push it into the position of my favorite fighting game of 2017 so far.",
                    5, // Rating, you can adjust this value
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
