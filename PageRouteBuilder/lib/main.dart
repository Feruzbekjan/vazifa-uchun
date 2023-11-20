import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hero_animation/second.dart';

void main(List<String> args) {
  runApp(const InitialScreen());
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child:const Text("Bos"),
                  
                  onPressed: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 2),
                        reverseTransitionDuration: const Duration(seconds: 2),
                        transitionsBuilder:
                            (_, animation, secondaryAnimation, child) {
                          return AnimatedBuilder(
                            animation: animation,
                            child: const SecondScreen(),
                            builder: (_, child) {
                              const begin = 0.0;
                              const end = 2 * pi;
                              var tween = Tween<double>(begin: begin, end: end);
                              return Transform.rotate(
                                angle: animation.drive(tween).value,
                                child: child,
                              );
                            },
                          );
                        },
                        pageBuilder: (_, animation, secondaryAnimation) {
                          return const SecondScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: Builder(builder: (context) {
            return FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.arrow_right),
            );
          }),
        );
      }),
    );
  }
}
