// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final dynamic status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon statusOnline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );
  static Icon statusOffline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
      name: 'Baidy nath bangal',
      avatar: "images/user/kaka.jpg",
      time: "10:20",
      status: MessageModel.statusOnline),
  MessageModel(
    name: 'Debasis Guchait',
    avatar: "images/user/dada.jpg",
    time: "09:00",
    status: MessageModel.statusOffline,
  ),
  MessageModel(
      name: 'Samar guchhait',
      avatar: "images/user/samar.jpg",
      time: "12:00",
      status: MessageModel.statusOnline),
  MessageModel(
      name: 'Akash Guchhait',
      avatar: "images/user/akash.jpg",
      time: "08:10",
      status: MessageModel.statusOffline),
  MessageModel(
      name: 'Sourav Das',
      avatar: "images/user/sourav.jpg",
      time: "07:30",
      status: MessageModel.statusOnline),
  MessageModel(
      name: 'Arpan Kar',
      avatar: "images/user/arpan.jpg",
      time: "03:25",
      status: MessageModel.statusOnline),
  MessageModel(
      name: 'Kunal Guchhait',
      avatar: "images/user/kunal.jpg",
      time: "01:45",
      status: MessageModel.statusOffline),
  MessageModel(
      name: 'Benny Dayal',
      avatar: "images/user/benny.jpg",
      time: "04:10",
      status: MessageModel.statusOnline),
];
