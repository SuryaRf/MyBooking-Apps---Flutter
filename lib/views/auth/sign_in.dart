import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/controller/bottom_sheet.dart';
import 'package:get/get.dart';
import 'package:mybook/models/choose_language.dart';

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
                    onTap:(){
                      showModalBottomSheet(context: context, builder: ((context) => Container(
                        height: 320,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                          color: Colors.black.withOpacity(0.8),
                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Choose Language', style: large.copyWith(color: Colors.white, fontSize: 23),),
                              const SizedBox(height: 5,),
                              Text('Which language do you want to use?', style: small.copyWith(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 13),),
                              const SizedBox(height: 10,),
                              SizedBox(
                                height: 155,
                                width: double.infinity,
                                child: ListView.builder(itemBuilder: (context, index){
                                  return ListTile(
                                    leading: InkWell(
                                   
                                      onTap: (){
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Text(chooseLanguages[index].language, style: TextStyle(color: selectedIndex == index ? Colors.amber : Colors.white, fontSize: 16),)),
                                    trailing: selectedIndex == index ? Icon(Icons.circle_rounded, color: Colors.amber.withOpacity(0.8),) : Icon(Icons.circle_outlined),
                                  );
                                  
                                },
                                itemCount: chooseLanguages.length,
                                scrollDirection: Axis.vertical,
                                ),
                              ),
                              Center(
                                child: InkWell(
                                  onTap: (){
                                    Get.to(const SignInPage());
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.amber
                                    ),
                                    child: selectedIndex == 0 ? Center(child: Text('Use English', style: small.copyWith(color: Colors.white, fontWeight: FontWeight.w500),)) : Center(child: Text('Use Indonesian', style: small.copyWith(color: Colors.white, fontWeight: FontWeight.w500))),
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
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
    
}