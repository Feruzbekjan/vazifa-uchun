import 'package:flutter/material.dart';
import 'package:hero_animation/main.dart';

class ThreePage extends StatefulWidget {
  const ThreePage({super.key});

  @override
  State<ThreePage> createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Page 3"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Bos"),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const InitialScreen();
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return AnimatedBuilder(
                        animation: animation,
                        child: const InitialScreen(),
                        builder: (context, child) {
                          var begin = 0.4;
                          var end = 1.0;
                          var tween = Tween(begin: begin, end: end);
                          return ScaleTransition(
                            scale: animation.drive(tween),
                            child: child,
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
