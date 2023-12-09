// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoView extends StatefulWidget {
//   const VideoView({super.key});

//   @override
//   State<VideoView> createState() => _VideoViewState();
// }

// class _VideoViewState extends State<VideoView> {
//   VideoPlayerController? controller;
//   @override
//   void initState() {
//     super.initState();
//     controller = VideoPlayerController.networkUrl()
//       ..addListener(() => setState(() {}))
//       ..setLooping(true)
//       ..initialize().then(
//         (value) => controller!.play(),
//       );
//     @override
//     void dispose() {
//       controller!.dispose();
//       super.dispose();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Transform(
//         child: Container(
//       child: VideoPlayer(controller),
//     ));
//   }
// }
