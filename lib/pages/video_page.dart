// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:facebook_ui/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Videos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Tooltip(
                  message: 'Play Video Automatically',
                  child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = (value);
                          print(isSwitched);
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1, color: Colors.black26),
        Expanded(
          child: ListView.builder(
            itemCount: videoData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: videoData[i].avatarOnPressed,
                      icon: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage(videoData[i].avatarImage),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                videoData[i].name,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            children: [
                              Text(
                                videoData[i].time,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              const Icon(Icons.public),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 30,
                      onPressed: videoData[i].moreOnpressed,
                      icon: const Icon(Icons.more_horiz_outlined),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YoutubePlayerControllerProvider(
                        controller: YoutubePlayerController(
                          initialVideoId: videoData[i].videoPostLink ?? "",
                          params: const YoutubePlayerParams(
                            autoPlay: false,
                            mute: false,
                            showControls: true,
                            showFullscreenButton: false,
                          ),
                        ),
                        child: const YoutubePlayerIFrame(
                          aspectRatio: 16 / 9,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          videoData[i].videoPostTitle,
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: videoData[i].LikeOnPressed,
                          icon: const Icon(Icons.thumb_up_alt_outlined),
                        ),
                        const Text(
                          '12',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: videoData[i].commentOnPressed,
                          icon: const Icon(Icons.message_outlined),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: videoData[i].shareOnPressed,
                          icon: const Icon(Icons.share_outlined),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
