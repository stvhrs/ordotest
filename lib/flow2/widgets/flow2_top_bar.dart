import 'package:flutter/material.dart';

class TopBar2 extends StatelessWidget {
  const TopBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon1() => const Icon(
          Icons.notifications,
          size: 24,
          color: Color.fromRGBO(255, 72, 90, 1),
        );
    Widget icon2() => Icon(Icons.shopping_bag,
        size: 24, color: Theme.of(context).primaryColor);

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 8),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_circle_left,
                color: Theme.of(context).primaryColor,
              )),
          Text(
            'PRODUCT DETAIL',
            style: Theme.of(context).textTheme.headline2,
          ),
          const Spacer(),
          icon1(),
          icon2()
        ],
      ),
    );
  }
}
