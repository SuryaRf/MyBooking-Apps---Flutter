import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mybook/choose_page.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/controller/bottom_sheet.dart';
import 'package:get/get.dart';
import 'package:mybook/models/choose_language.dart';
import 'package:mybook/views/screen/home_page/home_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isSelected = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // int myIndex = 0;

    // final bottomSheet = Get.put(DisplayBottomSheet().display(context));
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 120,
                  width: 120,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: ((context) => Container(
                            height: 320,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              color: Colors.black.withOpacity(0.8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Choose Language',
                                    style: large.copyWith(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Which language do you want to use?',
                                    style: small.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 155,
                                    width: double.infinity,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          leading: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selectedIndex = index;
                                                });
                                              },
                                              child: Text(
                                                chooseLanguages[index].language,
                                                style: TextStyle(
                                                    color:
                                                        selectedIndex == index
                                                            ? Colors.amber
                                                            : Colors.white,
                                                    fontSize: 16),
                                              )),
                                          trailing: selectedIndex == index
                                              ? Icon(
                                                  Icons.circle_rounded,
                                                  color: Colors.amber
                                                      .withOpacity(0.8),
                                                )
                                              : Icon(Icons.circle_outlined),
                                        );
                                      },
                                      itemCount: chooseLanguages.length,
                                      scrollDirection: Axis.vertical,
                                    ),
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        height: 65,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.amber),
                                        child: selectedIndex == 0
                                            ? Center(
                                                child: Text(
                                                'Use English',
                                                style: small.copyWith(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ))
                                            : Center(
                                                child: Text('Use Indonesian',
                                                    style: small.copyWith(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500))),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    );
                  },
                  child: Image.asset(
                    'assets/images/language.png',
                    height: 70,
                    width: 70,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 320,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset('assets/images/avenger.png'),
          ),
          const SizedBox(height: 10,),
          Text('MBooking Helloo!', style: large.copyWith(color: Colors.white),),
          const SizedBox(height:10),
          Text('Enjoy your favorite movies', style: small.copyWith(color: Colors.white, fontWeight: FontWeight.w100),),
          const SizedBox(height: 10,),
      SizedBox(
        height: 20,
        width: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 30,),
      Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: InkWell(
          onTap: () => Get.to(const ChoosePage()),
          child: Text('Sign In', style: small.copyWith(fontWeight: FontWeight.w600)))),
      ),
      const SizedBox(height: 15,),
      Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white)
        ),
        child: Center(child: Text('Sign Up', style: small.copyWith(fontWeight: FontWeight.w600, color: Colors.white))),
      ),
      const SizedBox(height: 10,),
      Center(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text('By sign in or sign up, you agree to our Terms of Service and Privacy Policy', style: small.copyWith(color: Colors.white.withOpacity(0.8),fontSize: 12),textAlign: TextAlign.center,),),
      )
        ],
      ),
    );
  }
}
