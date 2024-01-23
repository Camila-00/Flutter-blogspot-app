import 'package:flutter/material.dart';

class PokemonReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Yellow Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 450, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pokemon.gif'),
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
                    'Pokemon Yellow',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pokémon Yellow Version: Special Pikachu Edition, often known as Pokémon Yellow Version, is the third Pokémon game for Game Boy released worldwide, as a solitary version of Pokémon Red and Blue Versions. In Japan, the game was the fourth Pokémon game released, as a second solitary version of Pocket Monsters Red & Green. Unlike other games, Pokémon Yellow was inspired by the anime.',
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
                    'I had a lot good moments with the game as a child, but now looking back at it as an adult, it is really hard for me to recommend for someone who wants a Kanto experience, even though it can be finished quickly enough. I would only recommend this for those who are a fan of the series enough to want to experience the state of chaotic poverty that is Gen 1 mechanics or play an official title with anime references (or the interactive Pikachu, valid reason), and that’s about it. There is nothing here that Fire Red and Leaf Green doesn’t do better, save for the anime references. Ultimately, Pokémon Yellow is a fun run down memory lane that eventually become unbearable at certain points, which made me want to play a more recent game a lot.',
                    4.5, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'Having Pikachu as a companion is really enjoyable and adds quite a bit of charm to the game. The dungeons are fun and offer a decent amount of challenge, something that some of the modern entries are lacking in. It\'s also really nice having Bulbasaur, Charmander and Squirtle at your disposal. It makes teambuilding easy if you want a simple, relaxed playthrough, but with the variety of other Pokemon around to catch you can simply choose to place the three classic starters in the PC and try something different.',
                    3, // Rating, you can adjust this value
                  ),
                  SizedBox(height: 10),
                  _buildReview(
                    'There\'s a reason why Pokemon is so successful, it\'s an excellent game. The game isn\'t incredibly deep, but the incentive of catching new creatures for your personal collection is a strong enough force to get you going to the end. The game is super easy to pick up and play, yet it\'s challenging it its own right. And it\'s addictive. After playing both Pokemon Red/Blue and then Yellow, I have to say that Pokémon Yellow is the best version to start out on the whole Pokemon craze.',
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
