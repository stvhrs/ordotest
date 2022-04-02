import 'package:flutter/material.dart';
import 'package:ordotest/flow2/flow2_screen.dart';
import 'package:ordotest/main.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final String price;
  final String actualprice;
  final String imageUrl;
  final Color color;
  const ProductTile(
      this.name, this.price, this.actualprice, this.imageUrl, this.color,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(249, 198, 198, 0.25),
              offset: Offset(0.0, 0.5),
              blurRadius: 1.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Flow2Screen(imageUrl),
          ));
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 334.34 / 295.68,
                child: Container(
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(15)),
                  child: Hero(
                    tag: imageUrl,
                    child: Image.asset(
                      imageUrl,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              rating,
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' Rp $actualprice',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        ' Rp $price',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  diskon,
                ]),
          ),
        ]),
      ),
    );
  }

  Widget get rating => Container(
      constraints: BoxConstraints(maxWidth: deviceWidth / 5.5),
      padding: const EdgeInsets.only(left: 5, top: 2, bottom: 2),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.5),
              blurRadius: 1.0,
            ),
          ],
          color: Color.fromRGBO(223, 174, 29, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(15))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.star_rate_rounded,
            size: 11,
          ),
          Text(
            '5.0 | 200+ rating',
            style: TextStyle(color: Colors.white, fontSize: 6.5),
          ),
        ],
      ));

  Widget get diskon => Container(
        margin: const EdgeInsets.only(top: 2),
        padding: const EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 3),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(60, 125, 217, 1),
            borderRadius: BorderRadius.circular(100)),
        child: const Text(
          'Diskon 10%',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 7.5),
        ),
      );
}
