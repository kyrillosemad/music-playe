import 'package:flutter/material.dart';
import 'package:music_app/view/shared%20widgets/sliver_appbar.dart';
import 'package:music_app/view/shared%20widgets/sliver_list.dart';
import 'package:sizer/sizer.dart';

class KONSTA extends StatefulWidget {
  const KONSTA({super.key});

  @override
  State<KONSTA> createState() => _KONSTAState();
}

class _KONSTAState extends State<KONSTA> {
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
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverBar(),
            /////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 15.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Your music",
                      style: TextStyle(fontSize: 17.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////
            const SliverListPart(),
          ],
        ),
      ),
    );
  }
}
