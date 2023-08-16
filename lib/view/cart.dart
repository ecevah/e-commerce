import 'package:eticaret/assets.dart';
import 'package:eticaret/components/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import '../constant/constant.dart';

class Cart extends ConsumerWidget {
  const Cart({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        padding: [23, 30].horizontalAndVerticalP,
        children: [
          Container(
            padding: [15, 15].horizontalAndVerticalP,
            margin: 20.horizontalP,
            decoration:
                BoxDecoration(color: Constant.yellow, borderRadius: 10.allBR),
            child: const Center(
              child: Text('Delivery for FREE until the end of the month',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
          ListView.separated(
            itemCount: 2,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            physics: const NeverScrollableScrollPhysics(),
            padding: 40.verticalP,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: 10.allP,
                decoration: BoxDecoration(
                  color: Constant.white,
                  borderRadius: 10.allBR,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.images.imW1PNG,
                        width: Grock.width * 0.3,
                        height: Grock.height * 0.2,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Apple Watch4',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '\$799',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Text(
                                "Quantity",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              quentityButton(icon: Icons.remove, onTap: () {}),
                              Padding(
                                padding: 7.horizontalP,
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              quentityButton(icon: Icons.add, onTap: () {})
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.clear))
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: 40.onlyBottomP,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: _style,
                ),
                Text(
                  "\$1899",
                  style: _style,
                )
              ],
            ),
          ),
          CustomButton(onTap: () {}, text: "Checkout")
        ],
      ),
    );
  }
}

TextStyle _style = const TextStyle(fontSize: 36, fontWeight: FontWeight.bold);

Widget quentityButton({required IconData icon, required Function onTap}) {
  return GrockContainer(
    onTap: () => onTap(),
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      color: Constant.orange,
      borderRadius: 4.allBR,
    ),
    child: Center(
        child: Icon(
      icon,
      color: Constant.black,
      size: 20,
    )),
  );
}
