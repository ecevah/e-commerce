import 'package:eticaret/constant/constant.dart';
import 'package:eticaret/model/product.dart';
import 'package:eticaret/view/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: () => Grock.to(ProductDetail(product: product)),
      width: 150,
      decoration: BoxDecoration(
        color: Constant.white,
        borderRadius: 15.allBR,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GrockContainer(
              onTap: () => Grock.to(ProductDetail(product: product)),
              height: 145,
              width: 150,
              decoration: BoxDecoration(
                color: Constant.darkwhite,
                borderRadius: 15.topBR,
                boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.inner,
                    color: Colors.black26,
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    color: Colors.black26,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    product.title,
                    style: const TextStyle(fontSize: 15),
                  )),
                  product.isSaved
                      ? const Icon(
                          Icons.bookmark,
                          color: Constant.orange,
                        )
                      : const Icon(
                          Icons.bookmark_border_rounded,
                          color: Constant.black,
                        )
                ],
              ),
            ),
            Padding(
              padding: 10.allP,
              child: Text(
                "\$${product.price}",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Constant.yellow,
                  ),
                  Text(
                    "${product.star}",
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
