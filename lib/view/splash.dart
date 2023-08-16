import 'package:eticaret/assets.dart';
import 'package:eticaret/constant/constant.dart';
import 'package:eticaret/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(const BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkwhite,
      body: Center(
        child: Image.asset(Assets.images.imSplashPngPNG),
      ),
    );
  }
}
