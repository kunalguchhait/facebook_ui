class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
    name: "Baidy nath bangal",
    avatar: "images/user/kaka.jpg",
    time: "9 min ago",
    description: "I am Baidy nath bangal from howrah",
  ),
  NotificationModel(
    name: "Debasis Guchait",
    avatar: "images/user/dada.jpg",
    time: "10 min ago",
    description: "I am Debasis Guchait from mumbai",
  ),
  NotificationModel(
    name: "Samar Guchait",
    avatar: "images/user/samar.jpg",
    time: "35 min ago",
    description: "I am Samar Guchait from kolkata",
  ),
  NotificationModel(
    name: "Akash Guchait",
    avatar: "images/user/akash.jpg",
    time: "5 min ago",
    description: "I am Akash Guchait from joypur,howrah",
  ),
  NotificationModel(
    name: "Sourav Das",
    avatar: "images/user/sourav.jpg",
    time: "40 min ago",
    description: "I am Sourav Das from jhikhira,howrah",
  ),
  NotificationModel(
    name: "Arpan Kar",
    avatar: "images/user/arpan.jpg",
    time: "55 min ago",
    description: "I am Arpan Kar from Nakubar,jhikhira,howrah",
  ),
];
