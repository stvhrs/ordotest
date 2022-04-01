import 'package:flutter/material.dart';
import 'package:ordotest/flow2/widgets/flow2_app_bar.dart';

class Flow2Screen extends StatefulWidget {
  final String imageUrl;
  const Flow2Screen(this.imageUrl, {Key? key}) : super(key: key);

  @override
  State<Flow2Screen> createState() => _Flow2ScreenState();
}

class _Flow2ScreenState extends State<Flow2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [AppBarFLow2(widget.imageUrl)];
            },
            body: Container(
              margin: const EdgeInsets.only(top: 14),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.red,
                      spreadRadius: 20,
                      offset: Offset(20, 6)),
                ],
              ),
              child: ListView(
                children: List.generate(50, (index) => const FlutterLogo()),
              ),
            )),
        bottomNavigationBar: bottomNav,
      ),
    );
  }
}

Widget get bottomNav => Container(
      padding: const EdgeInsets.all(20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.document_scanner,
              color: Colors.grey,
            ),
            Icon(Icons.compare_arrows_rounded, color: Colors.grey),
            Icon(Icons.home, color: Colors.grey),
            Icon(Icons.graphic_eq_sharp, color: Colors.grey),
            Icon(Icons.person, color: Colors.grey)
          ]),
    );
