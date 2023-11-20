import 'package:flutter/material.dart';
import 'package:hero_animation/page3.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Colors.green,
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
                    return const ThreePage();
                  },
                  transitionDuration: const Duration(seconds: 3),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return AnimatedBuilder(
                      child: const ThreePage() ,
                      animation: animation, 
                      builder: (context, child) {
                        var begin = 0.0;
                        var end = 1.0;
                        var tween = Tween(begin: begin,end: end);
                        return FadeTransition(
                          opacity: animation.drive(tween),
                          child: child,
                        );
                      },
                    );
                  },
                  
                ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
