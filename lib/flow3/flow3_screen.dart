import 'package:flutter/material.dart';
import 'package:ordotest/flow3/widges/flow3_detail_pembayaran.dart';
import 'package:ordotest/flow3/widges/flow3_tile.dart';

import '../main.dart';

class FLow3Screen extends StatelessWidget {
  const FLow3Screen({Key? key}) : super(key: key);

  Widget get bottomNav => Container(
        color: Colors.white,
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: bottomNav,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(deviceHeight / 14),
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_circle_left,
                          color: Color.fromRGBO(100, 161, 244, 1),
                        )),
                    const Text(
                      'Checkout',
                      style: TextStyle(
                          color: Color.fromRGBO(100, 161, 244, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 50, top: 10),
              children: const [Flow3Tile(), DetailPembayaran()],
            )));
  }
}
