import 'package:flutter/material.dart';
import 'package:ordotest/main.dart';

class AppBarFLow1 extends StatelessWidget {
  const AppBarFLow1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(25),
            ),
            width: deviceWidth * 0.55,
            height: deviceWidth / 11,
            child: Row(
              children: [
                Icon(Icons.search_rounded,
                    size: 18, color: Theme.of(context).colorScheme.secondary),
                Expanded(
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      style: Theme.of(context).textTheme.headline3,
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: ' Cari dengan mengetik barang',
                      )),
                ),
              ],
            ),
          ),
          icon1,
          icon2,
          icon3
        ],
      ),
    );
  }

  Widget get icon1 => Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(100, 161, 244, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.compare_arrows,
          size: 22,
          color: Colors.white,
        ),
      );
  Widget get icon2 => Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(223, 174, 29, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.shopping_bag,
          size: 22,
          color: Colors.white,
        ),
      );
  Widget get icon3 => Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 72, 90, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.notifications_none_rounded,
          size: 22,
          color: Colors.white,
        ),
      );
}
