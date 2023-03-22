import 'package:cupertino_store/screen/cart/view/ios_screen.dart';
import 'package:cupertino_store/screen/search/view/ios_screen.dart';
import 'package:cupertino_store/screen/store/provider/provider.dart';
import 'package:cupertino_store/screen/store/view/ios_store_screen.dart';
import 'package:cupertino_store/screen/tabbar/tabbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => productProvider(),)
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(p0) => tabbar_screen(),
          '1':(p0) => storescreen(),
          '2':(p0) => searchscreen(),
          '3':(p0) => cartscreen(),

        },
      ),
    ),
  );
}