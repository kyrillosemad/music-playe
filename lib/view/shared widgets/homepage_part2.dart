import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_app/view/screens/slider_item.dart';
import 'package:sizer/sizer.dart';

class PartTwo extends StatelessWidget {
  const PartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 30.h,
      child: CarouselSlider(
          items: const [
            SliderItem(0),
            SliderItem(1),
            SliderItem(2),
            SliderItem(3),
          ],
          options: CarouselOptions(
              autoPlay: true, height: 28.h, enlargeCenterPage: true)),
    );
  }
}
