import 'package:flutter/material.dart';

class DetailPembayaran extends StatelessWidget {
  const DetailPembayaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.black, fontSize: 15);
    var style2 = const TextStyle(color: Colors.black, fontSize: 15);
    Widget buttom(String name) => Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        padding:
            const EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 14),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(60, 125, 217, 1),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const RotatedBox(
              quarterTurns: 2,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 12.5,
              ),
            ),
          ],
        ));
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detail Pembayaran',
            style: style,
          ),
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tas Gucci',
                      style: style,
                    ),
                    Text(
                      '(Qty 1)',
                      style: style2,
                    )
                  ],
                ),
                Text(
                  'Rp 75.000',
                  style: style2,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tas Gucci',
                      style: style,
                    ),
                    Text(
                      '(Qty 1)',
                      style: style2,
                    )
                  ],
                ),
                Text(
                  'Rp 75.000',
                  style: style2,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ongkos Kirim',
                style: style2,
              ),
              Text(
                'Rp 10.000',
                style: style2,
              )
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: style,
              ),
              Text(
                'Rp 450.000',
                style: style,
              )
            ],
          ),
          buttom('Waktu Pengantaran'),
          buttom('Alamat Pengiriman'),
          Container(
            margin: const EdgeInsets.only(top: 20, ),
            padding: const EdgeInsets.only(left: 9, right: 9, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                'Tolong pastikan semua pesanan anda sudah\n benar dan tidak kurang.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 15.2,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
            padding: const EdgeInsets.only(left: 7, right: 7, top: 12, bottom: 12),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(60, 125, 217, 1),
                borderRadius: BorderRadius.circular(50)),
            child: const Center(
              child: Text(
                'Bayar Sekarang',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
