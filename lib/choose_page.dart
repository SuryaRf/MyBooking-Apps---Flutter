import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/views/screen/home_page/home_page.dart';
import 'package:mybook/views/screen/movie/moviePage.dart';
import 'package:mybook/views/screen/profile/profile_page.dart';
import 'package:mybook/views/screen/ticket/ticket_page.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  int myIndex = 0;

  final List<Widget> _children =[
    HomePage(),
    TicketPage(),
    MoviePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
            
          } ,
          currentIndex: myIndex,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
          unselectedLabelStyle: TextStyle(color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.white),
        
          items:const  [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home', ),
            BottomNavigationBarItem(icon: Icon(Icons.sticky_note_2_outlined), label: 'Ticket'),
            BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined), label: 'Movies'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profle'),
          ],),
      ),
        body: Center(
          child: _children.elementAt(myIndex),
        ),
    );
  }
}