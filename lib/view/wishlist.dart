import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import '../components/product_card.dart';
import '../riverpod/home_riverpod.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRivepod());

class Wishlist extends ConsumerWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(homeRiverpod);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: 12.verticalP,
                child: const Text(
                  'My Wishlist',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                ),
                itemCount: watch.wishlist.products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: watch.wishlist.products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
