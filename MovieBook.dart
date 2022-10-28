import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieBook extends StatelessWidget {
  final List<String> Movieimg = <String>[
    'https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/2/29/Dora_and_the_Lost_City_of_Gold_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/0/06/UglyDolls_%282019%29_theatrical_poster.png',
    'https://upload.wikimedia.org/wikipedia/en/4/4e/Captain_Marvel_%28film%29_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/9/94/John_Wick_Chapter_3_Parabellum.png',
    'https://upload.wikimedia.org/wikipedia/en/0/00/Us_%282019%29_theatrical_poster.png',
    'https://upload.wikimedia.org/wikipedia/en/2/2e/Triple_Threat_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/f/fc/Hellboy_%282019%29_theatrical_poster.png'
  ];
  final List<String> Moviename = <String>[
    'Avengers Endgame',
    'Dora The Lost City Of God',
    'Ugly Dolls',
    'Captain Marvel',
    'John Wick Chapter 3 -Parabellum',
    'Us',
    'Tripple Threat',
    'Hellboy'
  ];
  final List<String> Moviecatagory = <String>[
    'Action,Adventure,Fantacy',
    '',
    'Animation,Adventure,Comedy',
    'Action,Adventure,Scientific',
    'Action,Triller',
    'Horror,Thriller',
    'Action,Triller',
    'Action,Fantacy,Adventure,Scientific'
  ];

  MovieBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Movies",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        body: ListView.builder(
          itemCount: Movieimg.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${Movieimg[index]}"),
              ),
              title: Text("${Moviename[index]}"),
              subtitle: Text("${Moviecatagory[index]}"),
              trailing: Text("2019"),
            );
          },
        ));
  }
}
