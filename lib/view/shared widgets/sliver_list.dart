import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/data/konsta.dart';
import 'package:music_app/view/screens/song.dart';
import 'package:sizer/sizer.dart';

class SliverListPart extends StatelessWidget {
  const SliverListPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      initialItemCount: musics.length,
      itemBuilder: (context, index, animation) {
        return Container(
          padding: EdgeInsets.all(10.sp),
          margin: EdgeInsets.all(8.sp),
          width: 85.w,
          height: 12.h,
          decoration: BoxDecoration(
              color: Colors.transparent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20.sp)),
          child: Row(children: [
            Hero(
              tag: "$index",
              child: Container(
                width: 25.w,
                height: 9.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.sp),
                    image: DecorationImage(
                        image: AssetImage(musics[index].cover),
                        fit: BoxFit.fill)),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 40.w,
                    height: 4.h,
                    child: Text(
                      musics[index].musicName,
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    )),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  width: 40.w,
                  height: 3.h,
                  child: Text(
                    musics[index].author,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12.sp,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 15.w,
              height: 10.h,
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 40.sp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Get.to(const SONG(), arguments: {
                      "index": index,
                    });
                  },
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}
