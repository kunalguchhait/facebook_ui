// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "Priti",
    image: "images/story/s1.jpg",
    onTap: () => print('Priti Story Clicked'),
  ),
  StoryModel(
    userName: "Sonali",
    image: "images/story/s2.jpg",
    onTap: () => print('Sonali Story Clicked'),
  ),
  StoryModel(
    userName: "Sejal",
    image: "images/story/s3.jpg",
    onTap: () => print('Sijal Story Clicked'),
  ),
  StoryModel(
    userName: "Jack",
    image: "images/story/s4.jpg",
    onTap: () => print('Jack Story Clicked'),
  ),
  StoryModel(
    userName: "Pragati",
    image: "images/story/s5.jpg",
    onTap: () => print('Pragati Story Clicked'),
  ),
];
