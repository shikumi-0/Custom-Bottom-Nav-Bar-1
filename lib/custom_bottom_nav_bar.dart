import 'file:///S:/Flutter%20Projects/Custom-Bottom-Nav-Bar-1/lib/custom_painter.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 80,
        width: size.width,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BottomNAvCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                backgroundColor: Colors.cyan,
                child: Icon(Icons.home),
              ),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.cyan,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.cyan,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: size.width * .20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.cyan,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.cyan,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
