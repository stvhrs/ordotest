import 'package:flutter/material.dart';
import 'package:ordotest/main.dart';
import 'package:ordotest/packages/indicator_boarding/lib/smooth_page_indicator.dart';

class BannerAqua extends StatefulWidget {
  const BannerAqua({Key? key}) : super(key: key);

  @override
  State<BannerAqua> createState() => _BannerAquaState();
}

class _BannerAquaState extends State<BannerAqua> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: _selectedIndex);

    return Container(margin: EdgeInsets.only(bottom: 23),
      height:deviceHeight/4,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: controller,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 955.27 / 536.77,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 955.27 / 536.77,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 955.27 / 536.77,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: -10,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotColor: Colors.blue.shade700,
                  dotWidth: 20,
                  activeDotColor: Colors.blue.shade200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
