import 'package:flutter/material.dart';

import '../../main.dart';

class Flow3Tile extends StatelessWidget {
  const Flow3Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            2,
            (index) => Dismissible(
                  key: ValueKey(index),
                  background: Container(margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(100, 161, 244, 1),
                          maxRadius: 20,
                          child: Icon(
                            Icons.delete_outlined,
                            color: Colors.white,
                          ))),
                  child: Column(
                    children: [
                      Stack(alignment: Alignment.center, children: [
                        card,
                        Positioned(left: 10, child: bag),
                        Positioned(
                            left: 100,
                            top: 32,
                            child: Text(
                              index.isOdd ? 'Tas Gucci' : 'Tas Eiger',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )),
                        const Positioned(
                            left: 100,
                            bottom: 32,
                            child: Text('Rp. 75.000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(100, 161, 244, 1),
                                ))),
                        Positioned(right: 20, top: 27, child: count),
                        Positioned(right: 20, bottom: 27, child: catatan)
                      ]),
                      cardCatatan
                    ],
                  ),
                )));
  }
}

Widget get card => Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(1, 6),
          ),
        ],
      ),
      height: deviceHeight / 7,
    );
Widget get bag => Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: const Offset(1, 8),
          ),
        ],
      ),
      width: deviceWidth / 4.6,
      child: Image.asset('assets/bag1.png'),
    );
Widget get count => Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(60, 125, 217, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: const Text(
        '-  2  +',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );

Widget get catatan => Container(
    padding: const EdgeInsets.only(left: 9, right: 9, top: 3, bottom: 3),
    decoration: const BoxDecoration(
        color: Color.fromRGBO(100, 161, 244, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.my_library_books,
          size: 14,
        ),
        Text(
          '  Catatan',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    ));
Widget get cardCatatan => Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Catatan Item',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromRGBO(128, 128, 128, 1)),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Ketik disini...',
                contentPadding: EdgeInsets.only(left: 10),
                fillColor: Colors.white,
                hintStyle: TextStyle(
                    color: Colors.grey.shade300, height: 2, wordSpacing: 2),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              )),
        )
      ]),
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
      ),
      height: deviceHeight / 6.8,
    );
