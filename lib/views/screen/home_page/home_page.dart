import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/models/now_playing.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CarouselSlider.builder(
                  itemCount: nowPlaying.length,
                  itemBuilder: (context, index, realIndex) {
                    final image = nowPlaying[index].film;
                    return buildImage(image, index);
                  },
                  options: CarouselOptions(
                      height: 500,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }))),
              const SizedBox(
                height: 10,
              ),
              buildIndicator()
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildImage(String image, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
              height: 350,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(style: BorderStyle.solid)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          Center(
            child: Column(
              children: [
                Text(
                  nowPlaying[index].title,
                  style: small.copyWith(color: Colors.white),
                ),
                Text(
                  nowPlaying[index].description,
                  style: small.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 12),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(nowPlaying[index].rate, style: small.copyWith(color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
      activeIndex: _HomePageState.activeIndex,
      count: nowPlaying.length,
    );
