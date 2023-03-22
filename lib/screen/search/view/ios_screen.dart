import 'package:cupertino_store/screen/store/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class searchscreen extends StatefulWidget {
  const searchscreen({Key? key}) : super(key: key);

  @override
  State<searchscreen> createState() => _product2_screenState();
}

class _product2_screenState extends State<searchscreen> {
  productProvider? productProvidertrue;
  productProvider? productProviderfalse;

  @override
  Widget build(BuildContext context) {
    productProviderfalse = Provider.of<productProvider>(context, listen: false);
    productProvidertrue = Provider.of<productProvider>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Consumer<productProvider>(
              builder: (context, value, child) => Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset("${productProvidertrue!.images2[index]}",
                              fit: BoxFit.cover
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${productProvidertrue!.name2[index]}"),
                            Text("\$ 70"),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(CupertinoIcons.add_circled),
                        )
                      ],
                    ),
                  ),
                  itemCount: productProviderfalse!.images2.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}