import 'package:flutter/material.dart';

import '../../main.dart';

class Flow3Tile extends StatelessWidget {
  const Flow3Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            children: List.generate(
                2,
                (index) => Dismissible(
                      key: ValueKey(index),
                      background: Container(
                          margin: const EdgeInsets.only(top: 30),
                          alignment: Alignment.topRight,
                          child: const CircleAvatar(
                              backgroundColor: Color.fromRGBO(100, 161, 244, 1),
                              maxRadius: 20,
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ))),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Stack(alignment: Alignment.center, children: [
                              card,
                              Positioned(left: 10, child: bag(index)),
                              Positioned(
                                  left: 100,
                                  top: 27,
                                  child: Text(
                                    index.isEven ? 'Tas Gucci' : 'Tas Eiger',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600, fontSize: 15),
                                  )),
                              const Positioned(
                                  left: 100,
                                  bottom: 27,
                                  child: Text('Rp. 75.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color.fromRGBO(100, 161, 244, 1),
                                      ))),
                              Positioned(right: 20, top: 26, child: count(index)),
                              Positioned(
                                  right: 20, bottom:26, child: catatan(index))
                            ]),
                            cardCatatan(index)
                          ],
                        ),
                      ),
                    ))),cardPesanan
      ],
    );
  }
}

Widget get card => Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(1, 6),
          ),
        ],
      ),
      height: deviceHeight / 7.8,
    );
Widget bag(int i) => Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: const Offset(1, 8),
          ),
        ],
      ),
     height: deviceWidth / 4.6,
      child: Image.asset(i.isEven ? 'assets/bag1.png' : 'assets/bag3.png'),
    );
Widget count(int i) => Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
      decoration: BoxDecoration(
          color: i.isEven
              ? const Color.fromRGBO(60, 125, 217, 1)
              : const Color.fromRGBO(100, 161, 244, 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Text(
        i.isEven ? '-  2  +' : '-  1  +',
        style: const TextStyle(color: Colors.white, fontSize: 11),
      ),
    );

Widget catatan(int i) => Container(
    padding: const EdgeInsets.only(left: 9, right: 9, top: 3, bottom: 3),
    decoration: BoxDecoration(
        color: i.isOdd
            ? const Color.fromRGBO(60, 125, 217, 1)
            : const Color.fromRGBO(100, 161, 244, 1),
        borderRadius:  BorderRadius.circular(15)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.my_library_books,
          size: 14,
        ),
        Text(
          i.isEven ? '  Catatan' : ' Hapus Catatan',
          style: const TextStyle(color: Colors.white, fontSize: 11),
        ),
      ],
    ));
Widget cardCatatan(int i) => Container(
      margin: const EdgeInsets.only(top: 10,),
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Catatan Item',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color.fromRGBO(128, 128, 128, 1)),
        ),
        Container(margin: const EdgeInsets.only(top: 2),
          child: TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: i.isEven
                    ? 'Ketik disini...'
                    : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                contentPadding: const EdgeInsets.only(left: 10),
                fillColor: Colors.white,
                hintStyle: TextStyle(
                    color: Colors.grey.shade300, fontSize: 12, height: 2),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              )),
        )
      ]),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
      ),
      height: deviceHeight /8.5,
    );
    Widget get cardPesanan => Container(
    
      padding: const EdgeInsets.all(15),margin: const EdgeInsets.only(bottom: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Catatan Pesanan',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromRGBO(128, 128, 128, 1)),
        ),
        Container(margin: const EdgeInsets.only(top: 5),
          child: TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Ketik disini...',
                contentPadding: const EdgeInsets.only(left: 10,top: 10),
                fillColor: Colors.white,
                hintStyle: TextStyle(
                    color: Colors.grey.shade300, fontSize: 12, height: 2),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              )),
        )
      ]),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
      ),
      height: deviceHeight / 6.2,
    );
