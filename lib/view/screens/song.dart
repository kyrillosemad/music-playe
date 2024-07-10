import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/data/konsta.dart';
import 'package:music_app/view/shared%20widgets/song_details.dart';
import 'package:sizer/sizer.dart';

class SONG extends StatefulWidget {
  const SONG({super.key});

  @override
  State<SONG> createState() => _SONGState();
}

class _SONGState extends State<SONG> {
  int index = Get.arguments["index"];
  AudioPlayer player = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool playing = true;
  bool favorite = false;
  bool repeat = false;
  @override
  void initState() {
    super.initState();
    player.play(AssetSource(musics[index].path));

    player.onDurationChanged.listen((dur) {
      setState(() {
        duration = dur;
      });
    });
    player.onPositionChanged.listen((pos) {
      setState(() {
        position = pos;
      });
    });
    player.onPlayerComplete.listen((event) {
      setState(() {
        if (repeat == true) {
          player.seek(Duration.zero);
          player.play(AssetSource(musics[index].path));
        } else {
          if (index < musics.length - 1) {
            index++;
            player.pause();
            player.seek(Duration.zero);
            player.play(AssetSource(musics[index].path));
            playing = true;
          } else {
            playing = false;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 76, 138),
          Color.fromARGB(255, 154, 146, 241)
        ])),
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 25.sp, left: 15.sp),
            width: 100.w,
            height: 10.h,
            child: Row(children: [
              IconButton(
                onPressed: () {
                  player.pause();
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_downward,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 14.w,
              ),
              Text(
                'Now Playing',
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
            ]),
          ),
          Hero(
            tag: '$index',
            child: Container(
              margin: EdgeInsets.only(top: 3.h),
              width: 95.w,
              height: 50.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      musics[index].cover,
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.w),
                    bottomRight: Radius.circular(40.w)),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const SongDetails(),
        ]),
      ),
    );
  }
}
