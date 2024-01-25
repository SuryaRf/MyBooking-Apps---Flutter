import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/models/coming_soon.dart';
import 'package:mybook/models/item_movie.dart';
import 'package:mybook/models/now_playing.dart';
import 'package:mybook/models/now_playing_grid.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemMovie.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: (selectedIndex == index)
                                    ? Colors.amber
                                    : Colors.grey.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                itemMovie[index].name,
                                style: small.copyWith(
                                    color: (selectedIndex == index)
                                        ? Colors.black
                                        : Colors.grey.withOpacity(0.7),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: GridView.builder(
                              //     scrollDirection: Axis.vertical,
                              //       gridDelegate:
                              //          const  SliverGridDelegateWithFixedCrossAxisCount(
                              //               crossAxisCount: 2,
                              //               mainAxisSpacing: 5,
                              //               crossAxisSpacing: 5
                              //              ),
                              //       itemCount: nowPlayingGrid.length,
                              //       itemBuilder: ((context, index) {
                              //         return Container(
                              //            height: 100,
                              //           width: 200,
                              //           decoration: BoxDecoration( borderRadius: BorderRadius.circular(15))
                              //           ,
                              //           child: Column(
                              //             children: [
                              //               Image.asset(nowPlayingGrid[index].film),
                              //               Text(nowPlayingGrid[index].title),
                              //               Text(nowPlayingGrid[index].rate),
                              //               Text(nowPlayingGrid[index].duration),
                              //               Text(nowPlayingGrid[index].genre)
                              //             ],
                              //           ),
                              //         );
                              //       })),
                              // )
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: GridView.builder(
                              //       gridDelegate:
                              //           const SliverGridDelegateWithFixedCrossAxisCount(
                              //               crossAxisCount: 2,
                              //               childAspectRatio: 0.1),
                              //       itemCount: comingSoon.length,
                              //       itemBuilder: ((context, index) {
                              //         return Container(
                              //           height: 100,
                              //           width: 200,
                              //           decoration: BoxDecoration( borderRadius: BorderRadius.circular(15))
                              //           ,
                              //           child: Column(
                              //             children: [
                              //               Image.asset(comingSoon[index].film),
                              //               Text(comingSoon[index].title),
                              //               Text(comingSoon[index].category),
                              //               Text(comingSoon[index].date)
                              //             ],
                              //           ),
                              //         );
                              //       })),
                              // )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      )),
    ));
  }
}
