import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybook/choose_page.dart';
import 'package:mybook/views/auth/sign_in.dart';
import 'package:mybook/views/screen/home_page/home_page.dart';
import 'package:mybook/views/screen/movie/moviePage.dart';
import 'package:mybook/views/screen/ticket/ticket_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Booking',
      
      theme: ThemeData(
        primaryColor: Colors.black ,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme(const TextTheme()),
         colorScheme: const ColorScheme.dark(primary: Color.fromARGB(255, 0, 0, 0)),
         useMaterial3: true,
        
      ),
            
      home: const SignInPage(),
    );
  }
}

