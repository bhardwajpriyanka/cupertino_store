import 'package:cupertino_store/screen/cart/view/ios_screen.dart';
import 'package:cupertino_store/screen/search/view/ios_screen.dart';
import 'package:cupertino_store/screen/store/view/ios_store_screen.dart';
import 'package:flutter/cupertino.dart';

class productProvider extends ChangeNotifier
{
  List images = [
        "images/product1images.jpeg",
        "assets/images/product2.jpeg",
        "assets/images/product3images.jpeg",
        "assets/images/product4.jpeg",
        "assets/images/product5.jpeg",
        "assets/images/product6.jpeg",
        "assets/images/product7.jpeg",
  ];

  List name = [
    "vagabond sack",
    "Stella sunglasses",
    "Whiteny belt",
    "Strut earrings",
    "Varsity socks",
    "Weave keyring",
    "Camera"
  ];

  List name2 = [
    "White prinstripe shirt",
    "Chambray shirt",
    "Serf and purf shirt",
    "Sunshirt dress",
    "Chambray shirt",
    "Blazer"
  ];

  List images2 = [
    "assets/images/sh2.jpg",
    "assets/images/sh3.jpg",
    "assets/images/sh4.jpg",
    "assets/images/sh5.jpg",
    "assets/images/sh6.jpg",

  ];

  DateTime time = DateTime(2023,16,10,15);

  void change(DateTime dt)
  {
    time = dt;
    notifyListeners();
  }

  List Screens = [
    storescreen(),
    searchscreen(),
    cartscreen(),
  ];
}