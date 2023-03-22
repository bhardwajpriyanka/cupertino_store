import 'package:cupertino_store/screen/store/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


class tabbar_screen extends StatefulWidget {
  const tabbar_screen({Key? key}) : super(key: key);

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {
  productProvider? productProvidertrue;
  productProvider? productProviderfalse;


  @override
  Widget build(BuildContext context) {

    productProviderfalse = Provider.of<productProvider>(context,listen: false);
    productProvidertrue = Provider.of<productProvider>(context,listen: true);
    return SafeArea(
        child: CupertinoTabScaffold(
          tabBar:  CupertinoTabBar(
            height: 70,
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return Center(
              child: productProvidertrue!.Screens[index],
            );
          },
        )
    );
  }
}