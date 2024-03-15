import 'package:flutter/material.dart';

class StoryScroll {
  final Color colorImage;
  final String userName;
  final Icon iconImage;

  StoryScroll( {required this.colorImage, required this.userName, required this.iconImage});

  static List<StoryScroll> storyScroll() {
    List<StoryScroll> stories = [];
    
    stories.add(StoryScroll(userName: 'JohnSmith', iconImage: const Icon(Icons.person) ,colorImage: Colors.red.shade100));

    stories.add(StoryScroll(userName: 'Michael',
        iconImage: const Icon(Icons.person_2_outlined) ,colorImage: Colors.green.shade100));

    stories.add(StoryScroll(userName: 'DavidScorer', iconImage: const Icon(Icons.person_3) ,colorImage: Colors.blue.shade100));

    stories.add(StoryScroll(userName: 'Seraphines', iconImage: const Icon(Icons.person_4_rounded) ,colorImage: Colors.yellow.shade100));

    stories.add(StoryScroll(userName: 'Thomas J.', iconImage: const Icon(Icons.person_add_alt_1_sharp) ,colorImage: Colors.orange.shade100));
    
    return stories;
  }
}
