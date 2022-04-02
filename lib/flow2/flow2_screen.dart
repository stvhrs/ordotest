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
                      offset: Offset(20, 6)),
                ],
              ),
              child: ListView(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(top: 25, left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tas Gucci',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              bekas,
                              stock
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Rp 126.000',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 16,
                                        color: Colors.blueAccent),
                                  ),
                                  Text(
                                    'Rp 100.500',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              diskon
                            ],
                          ),
                          const Divider(),
                          Container(margin: EdgeInsets.only(top: 6,),
                            child: Text(
                              'Vendor',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontSize: 11.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 10, top: 10),
                                width: 30,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset('assets/store.png')),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 18),
                                  child: const Text(
                                    'Eiger Store',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                              const Spacer(),
                              rating
                            ],
                          ),
                          Text(
                            'Deskripsi',
                            style: TextStyle(
                                height: 4,
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 11.5,
                                fontWeight: FontWeight.bold),
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
                            style: TextStyle(
                                height: 4,
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 11.5,
                                fontWeight: FontWeight.w600),
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
      padding: const EdgeInsets.only(left: 7, right: 7, bottom: 1.2, top: 1.2),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(60, 125, 217, 1),
          borderRadius: BorderRadius.circular(100)),
      child: const Text(
        'Diskon 10%',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 9.5),
      ),
    );
Widget get bekas => Container(
      padding: const EdgeInsets.only(left: 9, right: 9, bottom: 4, top: 4),
      margin: const EdgeInsets.only(right: 12, bottom: 3),
      decoration: BoxDecoration(
          color: Colors.amber.shade600,
          borderRadius: BorderRadius.circular(100)),
      child: const Text(
        'Barang Bekas',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 9),
      ),
    );
Widget get stock => Container(
      padding: const EdgeInsets.only(left: 9, right: 9, bottom: 4, top: 4),
      margin: const EdgeInsets.only(),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(100)),
      child: const Text(
        'Stok 100',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 9),
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
Widget get rating => Container(
    padding: const EdgeInsets.only(left: 5, top: 2, bottom: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        Icon(
          Icons.star_rate_rounded,
          size: 25,
          color: Color.fromRGBO(60, 125, 217, 1),
        ),
        Text(
          '5.0 | 200 Terjual',
          style: TextStyle(height: 2,color:Color.fromRGBO(60, 125, 217, 1), fontSize: 14),
        ),
      ],
    ));
Widget comment(int i) => Container(
      margin: const EdgeInsets.all(20),
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
                  style: TextStyle(
                    fontSize: 11,color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Thats a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
