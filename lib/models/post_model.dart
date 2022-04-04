// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/cupertino.dart';

class PostModel {
  final VoidCallback avaterOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback LikeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel(
      {required this.avaterOnPressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.postTitle,
      required this.postImage,
      required this.LikeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<PostModel> postData = [
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/samar.jpg',
      name: 'Samar Guchhait',
      time: 'Just Now',
      moreOnPressed: () => print('More Clicked'),
      postTitle: 'This is my new Profile Picture',
      postImage: 'images/user/sonam.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/akash.jpg',
      name: 'Akash Guchhait',
      time: '5 min ago',
      moreOnPressed: () => print('More Clicked'),
      postTitle:
          ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
      postImage: 'images/user/u8.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/kaka.jpg',
      name: 'baiday nath bangal',
      time: '10 min ago',
      moreOnPressed: () => print('More Clicked'),
      postTitle:
          'will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident',
      postImage: 'images/user/u7.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/dada.jpg',
      name: 'Debasis Guchhait',
      time: '20 min ago',
      moreOnPressed: () => print('More Clicked'),
      postTitle:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words',
      postImage: 'images/user/u9.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/kunal.jpg',
      name: 'Kunal Guchhait',
      time: '40 min ago',
      moreOnPressed: () => print('More Clicked'),
      postTitle:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      postImage: 'images/user/u4.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/sourav.jpg',
      name: 'Sourav Das',
      time: '35 min ago',
      moreOnPressed: () => print('More Clicked'),
      postTitle:
          'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.',
      postImage: 'images/user/u5.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
  PostModel(
      avaterOnPressed: () => print('Avatar Clicked'),
      avatarImage: 'images/user/arpan.jpg',
      name: 'Arpan Kar',
      time: '50 min ago',
      moreOnPressed: () => print('More Clicked'),
      postTitle:
          'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
      postImage: 'images/user/u3.jpg',
      LikeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Command Clicked'),
      shareOnPressed: () => print('Share Clicked')),
];
