import 'package:flutter/material.dart';
import 'package:ordotest/flow1/widgets/banner.dart';
import 'package:ordotest/flow1/widgets/gridview_products.dart';
import 'package:ordotest/flow1/widgets/flow1_app_bar.dart';
import 'package:ordotest/main.dart';

class Flow1Screen extends StatefulWidget {
  const Flow1Screen({Key? key}) : super(key: key);

  @override
  _Flow1ScreenState createState() => _Flow1ScreenState();
}

class _Flow1ScreenState extends State<Flow1Screen> {
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(deviceHeight / 10),
          child: const AppBarFLow1()),
      body: ListView(children: const [BannerAqua(), GridViewProducts()]),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Icon(
            Icons.document_scanner,
            color: Colors.grey,
          ),
          const Icon(Icons.compare_arrows_rounded, color: Colors.grey),
          Icon(Icons.home, color: Theme.of(context).colorScheme.secondary),
          const Icon(Icons.graphic_eq_sharp, color: Colors.grey),
          const Icon(Icons.person, color: Colors.grey)
        ]),
      ),
    ));
  }
}
