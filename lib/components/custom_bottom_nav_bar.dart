import 'package:eticaret/constant/constant.dart';
import 'package:eticaret/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffoldRiverpod);
    var read = ref.read(baseScaffoldRiverpod);
    return Container(
      width: Grock.width,
      height: 130,
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40, top: 19),
      decoration: const BoxDecoration(
        color: Constant.darkwhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < read.items.length; i++)
            Stack(
              clipBehavior: Clip.none,
              children: [
                GrockContainer(
                  onTap: () {
                    read.setCurrentIndex(i);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        read.items[i].image,
                        color: i == watch.currentIndex
                            ? Constant.orange
                            : Constant.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          read.items[i].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: i == watch.currentIndex
                                  ? Constant.orange
                                  : Constant.black),
                        ),
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: i == watch.currentIndex,
                  child: Positioned.fill(
                    top: -31,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 3,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: 4.allBR,
                          color: Constant.orange,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}
