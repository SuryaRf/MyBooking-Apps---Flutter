import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/models/coming_soon.dart';
import 'package:mybook/models/movie_news.dart';
import 'package:mybook/models/now_playing.dart';
import 'package:mybook/models/now_playing_grid.dart';
import 'package:mybook/models/service.dart';
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Ayruz',
                          style: small.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 14),
                        ),
                        Text(
                          'Welcome back',
                          style: small.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.notifications_active_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            )),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        hintStyle:
                            TextStyle(color: Colors.grey.withOpacity(0.7)),
                        fillColor: Colors.white,
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          size: 16,
                        ),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.7),
                                width: 0.5),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Now Playing',
                      style: small.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All >',
                      style: small.copyWith(
                          color: Colors.amber,
                          fontWeight: FontWeight.w100,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CarouselSlider.builder(
                  itemCount: nowPlaying.length,
                  itemBuilder: (context, index, realIndex) {
                    final image = nowPlaying[index].film;
                    return buildImage(image, index);
                  },
                  options: CarouselOptions(
                      autoPlay: true,
                      height: 420,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }))),
              const SizedBox(
                height: 10,
              ),
              buildIndicator(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Coming soon',
                      style: small.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All >',
                      style: small.copyWith(
                          color: Colors.amber,
                          fontWeight: FontWeight.w100,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 300,
                width: 600,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: comingSoon.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 550,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(comingSoon[index].film),
                          Text(
                            comingSoon[index].title,
                            style: small.copyWith(
                                color: Colors.amber, fontSize: 14),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.video_camera_front_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                comingSoon[index].category,
                                style: small.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                comingSoon[index].date,
                                style: small.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Promo & Discount',
                      style: small.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All >',
                      style: small.copyWith(
                          color: Colors.amber,
                          fontWeight: FontWeight.w100,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/promo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Service',
                      style: small.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All >',
                      style: small.copyWith(
                          color: Colors.amber,
                          fontWeight: FontWeight.w100,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 120,
                width: 400,
                child: ListView.builder(
                  itemCount: service.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(service[index].image),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          service[index].name,
                          style: small.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 12),
                        )
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Movie News',
                      style: small.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All >',
                      style: small.copyWith(
                          color: Colors.amber,
                          fontWeight: FontWeight.w100,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: ListView.builder(
                  itemCount: movieNews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 5),
                          child: Container(
                            height: 190,
                            width: 250,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                Image.asset(movieNews[index].image, fit: BoxFit.cover,),
                                const SizedBox(height: 10,),
                                Text(
                            movieNews[index].name,
                            style: small.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 12),
                          )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        
                      ],
                    );
                  }),
                ),
              ),
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
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        nowPlaying[index].rate,
                        style: small.copyWith(color: Colors.white),
                      )
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
      effect: const ExpandingDotsEffect(
          dotWidth: 7, activeDotColor: Colors.amber, dotHeight: 7),
      activeIndex: _HomePageState.activeIndex,
      count: nowPlaying.length,
    );
