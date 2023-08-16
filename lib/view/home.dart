import 'package:eticaret/assets.dart';
import 'package:eticaret/components/custom_appbar.dart';
import 'package:eticaret/components/product_card.dart';
import 'package:eticaret/constant/constant.dart';
import 'package:eticaret/model/home_product_model.dart';
import 'package:eticaret/riverpod/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRivepod());

class Home extends ConsumerStatefulWidget {
  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          Campaiagns(read: read, watch: watch),
          homeProductCategories(read.hotDeals),
          homeProductCategories(read.mostPopular),
          homeProductCategories(read.iphones),
          homeProductCategories(read.ipads),
          homeProductCategories(read.macs)
        ],
      ),
    );
  }
}

class Campaiagns extends StatelessWidget {
  const Campaiagns({
    super.key,
    required this.read,
    required this.watch,
  });

  final HomeRivepod read;
  final HomeRivepod watch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          CompaignsPageView(read: read, watch: watch),
          CompaignsDot(read: read, watch: watch)
        ],
      ),
    );
  }
}

class CompaignsPageView extends StatelessWidget {
  const CompaignsPageView({
    super.key,
    required this.read,
    required this.watch,
  });

  final HomeRivepod read;
  final HomeRivepod watch;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: read.pageController,
      itemCount: read.campaigns.length,
      itemBuilder: (context, index) => Image.asset(
        watch.campaigns[index],
      ),
      onPageChanged: (newPageValue) => read.setCampaingsIndex(newPageValue),
    );
  }
}

class CompaignsDot extends StatelessWidget {
  const CompaignsDot({
    super.key,
    required this.read,
    required this.watch,
  });

  final HomeRivepod read;
  final HomeRivepod watch;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < read.campaigns.length; i++)
              Container(
                width: 8,
                height: 8,
                margin: 3.allP,
                decoration: BoxDecoration(
                  color: watch.campaignsCurrentIndex == i
                      ? Constant.white
                      : Constant.gray,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ),
    );
  }
}

Widget homeProductCategories(HomeProductModel model) {
  return Column(
    children: [
      Padding(
        padding: [20, 30, 20, 15].paddingLTRB,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              model.categoryTitle,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            const Text(
              "See All",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffA6A6AA)),
            )
          ],
        ),
      ),
      SizedBox(
        height: 280,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
          itemCount: model.products.length,
          padding: [20, 10, 20, 10].paddingLTRB,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductCard(
              product: model.products[index],
            );
          },
        ),
      )
    ],
  );
}
