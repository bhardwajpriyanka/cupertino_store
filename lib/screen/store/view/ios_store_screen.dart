import 'package:cupertino_store/screen/store/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class storescreen extends StatefulWidget {
  const storescreen({Key? key}) : super(key: key);

  @override
  State<storescreen> createState() => _product1_screenState();
}

class _product1_screenState extends State<storescreen> {
  productProvider? productProvidertrue;
  productProvider? productProviderfalse;

  @override
  Widget build(BuildContext context) {

    productProviderfalse = Provider.of<productProvider>(context,listen: false);
    productProvidertrue = Provider.of<productProvider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Consumer<productProvider>(
              builder: (context, value, child) => Expanded(
                child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,width: 70,
                            child: Image.asset("${productProvidertrue!.images[index]}",fit: BoxFit.cover),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${productProvidertrue!.name[index]}"),
                              Text("\$ 120"),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(CupertinoIcons.add_circled),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          height: 1,width: double.infinity,color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                  itemCount: 7,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}