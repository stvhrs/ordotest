import 'package:flutter/material.dart';
import 'package:ordotest/main.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon1() =>Container(
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromRGBO(100, 161, 244, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.compare_arrows,
            size: 22,
            color: Colors.white,
          ),
        );
    Widget icon2() => Container(
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromRGBO(223, 174, 29, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.shopping_bag,
            size: 22,
            color: Colors.white,
          ),
        );
    Widget icon3() =>  Container(
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 72, 90, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.notifications_none_rounded,
            size: 22,
            color: Colors.white,
          ),
        );
    return Container(
      margin: EdgeInsets.only(left: 15,right: 10,top: 15,bottom: 8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(25),
            ),
            width: deviceWidth*0.55,
            height:deviceWidth/11,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.headline3,
              decoration: const InputDecoration(
                  isDense: true,
                  hintText: 'Cari dengan mengetik barang',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                  )),
            ),
          ),
          icon1(),
          icon2(),
          icon3()
        ],
      ),
    );
  }
}
