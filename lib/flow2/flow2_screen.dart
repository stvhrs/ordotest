import 'package:flutter/material.dart';
import 'package:ordotest/flow2/widgets/flow2_app_bar.dart';
import 'package:ordotest/main.dart';

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
              margin: const EdgeInsets.only(top: 25),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(255, 72, 90, 1),
                      spreadRadius: 20,
                      offset: Offset(20, -5)),
                  BoxShadow(
                      color: Colors.white,
                      spreadRadius: 20,
                      offset: Offset(20, 10))
                ],
              ),
              child: ListView(
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 25,
                        right: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tas Gucci',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                              const Spacer(),
                              bekas,
                              stock
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Rp 126.000',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 17,
                                          color:
                                              Color.fromRGBO(100, 161, 244, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Rp 100.500',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5),
                                    )
                                  ],
                                ),
                                diskon
                              ],
                            ),
                          ),
                          const Divider(
                            height: 0,
                          ),
                          Text(
                            'Vendor',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 15, top: 8),
                                width: 35,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('assets/store.png')),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 16),
                                  child: const Text(
                                    'Eiger Store',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  )),
                              const Spacer(),
                              terjual
                            ],
                          ),
                          Text(
                            'Deskripsi',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'Int publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                wordSpacing: 2.5,
                                height: 1.5,
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 11.5),
                          ),
                          Text(
                            'Ulasan dan Penilaian',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          ...List.generate(2, (index) => comment(index))
                              .toList()
                        ],
                      ))
                ],
              ),
            )),
        bottomNavigationBar: bottomNav,
      ),
    );
  }
}

Widget get diskon => Container(
      margin: const EdgeInsets.only(top: 2),
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 1, top: 1),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(60, 125, 217, 1),
          borderRadius: BorderRadius.circular(50)),
      child: const Text(
        'Diskon 10%',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),
      ),
    );

Widget get bekas => Container(
      padding: const EdgeInsets.only(left: 9, right: 9, bottom: 5, top: 2.5),
      margin: const EdgeInsets.only(right: 12,),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(223, 174, 29, 1),
          borderRadius: BorderRadius.circular(50)),
      child: const Text(
        'Barang Bekas',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );

Widget get stock => Container(
      padding: const EdgeInsets.only(left: 9, right: 9,bottom: 5, top: 2.5),
    
      decoration: BoxDecoration(
          color: const Color.fromRGBO(100, 161, 244, 1),
          borderRadius: BorderRadius.circular(50)),
      child: const Center(
        child: Text(
          'Stok 100',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );

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

Widget get terjual => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.star_rate_rounded,
          size: 25,
          color:  Color.fromRGBO(100, 161, 244, 1),
        ),
        Text(
          '5.0 |',
          style: TextStyle(
              height: 2,
              color: Color.fromRGBO(60, 125, 217, 1),
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        Text(
          ' 200 Terjual',
          style: TextStyle(
              height: 2, color: Color.fromRGBO(60, 125, 217, 1), fontSize: 14,fontWeight: FontWeight.w600),
        ),
      ],
    );

Widget comment(int i) => Container(
      decoration: BoxDecoration(   boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(1, 1),
          ),
        ],
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
      child: Column(
        children: [
          ListTile(
            trailing: SizedBox(
              width: deviceWidth / 11,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Icon(
                      Icons.star_rate_rounded,
                      size: 14,
                      color: Colors.amber.shade900,
                    ),
                  ),
                  const Text(
                    '5.0',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            style: ListTileStyle.drawer,
            leading: Image.asset(
              i.isEven ? 'assets/p1.png' : 'assets/p2.png',
              width: 35,
              alignment: Alignment.bottomCenter,
            ),
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  i.isEven ? 'Maude Hall' : 'Ester Howard',
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '14 min',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Text(
            'Thats a fantastic new app feature. You and your team did an excellent job of incorpoterjual user testing feedback.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
