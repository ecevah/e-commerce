import 'package:eticaret/assets.dart';
import 'package:eticaret/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle;

  CustomAppBar({Key? key, this.appbarTitle = 'iDrip'})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style: const TextStyle(
          color: Constant.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      leading: Padding(
        padding: 12.allP,
        child: SvgPicture.asset(
          Assets.icons.icDrawerSVG,
        ),
      ),
      actions: [
        Padding(
          padding: 12.allP,
          child: SvgPicture.asset(
            Assets.icons.icSearchSVG,
          ),
        ),
      ],
      backgroundColor: Constant.darkwhite,
    );
  }
}
