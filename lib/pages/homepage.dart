import 'package:flutter/material.dart';

import '../custom_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          CustomBottomNavBar(size: size),
        ],
      ),
    );
  }
}
