import 'package:eticaret/assets.dart';
import 'package:eticaret/model/home_product_model.dart';
import 'package:eticaret/model/product.dart';
import 'package:flutter/material.dart';

class HomeRivepod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.imCampaigns1PNG,
    Assets.images.imCampaigns2PNG,
    Assets.images.imCampaigns3PNG,
  ];
  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaingsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  HomeProductModel hotDeals = HomeProductModel(
    categoryTitle: 'Hot Deals',
    products: [
      Product(
          image: Assets.images.imC1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1299,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imW1PNG,
          title: 'apple Watch SE" (2021)',
          price: 279,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imL1PNG,
          title: 'Macbook Pro 16-inch (2021)',
          price: 2499,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imPhone1PNG,
          title: 'iPhone 13 mini (2021)',
          price: 729,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
    ],
  );
  HomeProductModel mostPopular = HomeProductModel(
    categoryTitle: 'Most Popular',
    products: [
      Product(
          image: Assets.images.imC1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1299,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imW1PNG,
          title: 'apple Watch SE" (2021)',
          price: 279,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imL1PNG,
          title: 'Macbook Pro 16-inch (2021)',
          price: 2499,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imPhone1PNG,
          title: 'iPhone 13 mini (2021)',
          price: 729,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
    ],
  );
  HomeProductModel iphones = HomeProductModel(
    categoryTitle: 'iPhones',
    products: [
      Product(
          image: Assets.images.imPhone1PNG,
          title: 'iPhone SE (2021)',
          price: 399,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imPhone2PNG,
          title: 'iPhone 12 mini (2020)',
          price: 729,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imP1PNG,
          title: 'iPhone 13 (2021)',
          price: 879,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
    ],
  );
  HomeProductModel ipads = HomeProductModel(
    categoryTitle: 'iPads',
    products: [
      Product(
          image: Assets.images.imP1PNG,
          title: 'iPads Air 10.9 inch (2021)',
          price: 599,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imP2PNG,
          title: 'iPads mini 8.3 inch (2021)',
          price: 329,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imP3PNG,
          title: 'iPads 10.2 inch (2021)',
          price: 499,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
    ],
  );
  HomeProductModel macs = HomeProductModel(
    categoryTitle: 'macs',
    products: [
      Product(
          image: Assets.images.imC1PNG,
          title: 'apple iMac 24" (2021)',
          price: 4999,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imCom1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1999,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imCom1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1999,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imCom1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1999,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imCom1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1999,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imCom1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1999,
          isSaved: false,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
    ],
  );
  HomeProductModel wishlist = HomeProductModel(
    categoryTitle: 'Most Popular',
    products: [
      Product(
          image: Assets.images.imC1PNG,
          title: 'apple iMac 24" (2021)',
          price: 1299,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imW1PNG,
          title: 'apple Watch SE" (2021)',
          price: 279,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imL1PNG,
          title: 'Macbook Pro 16-inch (2021)',
          price: 2499,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imPhone1PNG,
          title: 'iPhone 13 mini (2021)',
          price: 729,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imL1PNG,
          title: 'Macbook Pro 16-inch (2021)',
          price: 2499,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
      Product(
          image: Assets.images.imPhone1PNG,
          title: 'iPhone 13 mini (2021)',
          price: 729,
          isSaved: true,
          star: 4.9,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          deskDetail:
              "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
          deskTitle: "Get Apple TV+ free for a year"),
    ],
  );
}
