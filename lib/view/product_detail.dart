import 'package:eticaret/components/custom_buttom.dart';
import 'package:eticaret/constant/constant.dart';
import 'package:eticaret/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class ProductDetail extends ConsumerStatefulWidget {
  Product product;
  ProductDetail({required this.product});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  TextStyle _subTitle = TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Constant.darkwhite,
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 381,
                width: double.maxFinite,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Constant.darkwhite,
                    boxShadow: [
                      BoxShadow(
                        color: Constant.gray,
                        blurRadius: 8.0,
                        offset: Offset(0, 8.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 40.0,
                      right: 40.0,
                      top: 60,
                    ),
                    child: Hero(
                      tag: widget.product.id,
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                child: Text(
                  widget.product.title,
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: 20.allP,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Colors',
                      style: _subTitle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 15,
                      children: [
                        for (int i = 0; i < widget.product.colors.length; i++)
                          Container(
                            width: 107,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: 10.allBR,
                              color: widget.product.colors[i],
                            ),
                          )
                      ],
                    ),
                    Padding(
                      padding: [0, 20, 20, 0].paddingLTRB,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.deskTitle,
                            style: _subTitle,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.product.deskDetail,
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: 20.horizontalP,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: _subTitle,
                    ),
                    Text(
                      "\$${widget.product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Constant.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: [20, 30, 20, 50].paddingLTRB,
                child: CustomButton(onTap: () {}, text: 'Add to cart'),
              )
            ],
          ),
          SafeArea(
            child: Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Grock.back(),
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Constant.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_rounded,
                      size: 32,
                      color: Constant.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
