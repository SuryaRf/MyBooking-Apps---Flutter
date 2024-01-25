import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/profile.png'),
        ),
      ),
    );
  }
}