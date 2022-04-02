import 'package:flutter/material.dart';
import 'package:ordotest/flow3/widges/flow3_tile.dart';

import '../main.dart';

class FLow3Screen extends StatelessWidget {
  const FLow3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceHeight / 14),
        child: Container(
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child:  Flow3Tile()
      )
    ));
  }
}
