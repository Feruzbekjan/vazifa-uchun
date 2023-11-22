import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/constants/icons.dart';
import 'package:productive/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.onboarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SvgPicture.asset(AppIcons.logo),
                const Gap(12),
            Text(
              'Productive',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.center,
        child:const Padding(
          padding:  EdgeInsets.only(bottom: 40),
          child: CupertinoActivityIndicator(
            radius: 16,
        
          ),
        ),
      ),
    );
  }
}
