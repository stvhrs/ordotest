import 'package:flutter/material.dart';
import 'package:ordotest/main.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final double price;
  final double actualprice;
  final String imageUrl;
  final Color color;
  const ProductTile(
      this.name, this.price, this.actualprice, this.imageUrl, this.color,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget rating() => Container(width: deviceWidth/5,
        padding: EdgeInsets.only(left: 1),
        decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 2.0,
                  ),
                ],
            color: Color.fromRGBO(223, 174, 29, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(10))),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.star_rate_rounded,size: 14,
            ),
            Text(
              '5.0 | 200+ rating',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ],
        ));
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          rating(),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Rp ' '$actualprice',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Rp ' '$price',
                    style: Theme.of(context).textTheme.headline2,
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 7, right: 7, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(60, 125, 217, 1),
                    borderRadius: BorderRadius.circular(100)),
                child: const Text(
                  'Diskon 10%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      )
    ]);
  }
}
