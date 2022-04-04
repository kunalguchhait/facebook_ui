// ignore_for_file: non_constant_identifier_names, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnpressed;
  final String videoPostTitle;
  final dynamic videoPostLink;
  final VoidCallback LikeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnpressed,
    required this.videoPostTitle,
    required this.videoPostLink,
    required this.LikeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/user/akash.jpg",
    name: 'Akash Guchhait',
    time: 'Just Now',
    moreOnpressed: () => print('More Clicked'),
    videoPostTitle:
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.',
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=Gg7_9Xd06rk"),
    LikeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/user/samar.jpg",
    name: 'Samar Guchhait',
    time: '20 min ago',
    moreOnpressed: () => print('More Clicked'),
    videoPostTitle:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=id4EOAq4OWo"),
    LikeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/user/dada.jpg",
    name: 'Debasis Guchhait',
    time: '5 hur ago',
    moreOnpressed: () => print('More Clicked'),
    videoPostTitle:
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.',
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=UoJxUmco8A8"),
    LikeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
];
