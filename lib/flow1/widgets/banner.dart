import 'package:flutter/material.dart'
    show
        Alignment,
        AspectRatio,
        BorderRadius,
        BoxDecoration,
        BoxFit,
        BuildContext,
        Clip,
        ClipRRect,
        Colors,
        Container,
        DefaultTabController,
        EdgeInsets,
        Image,
        Key,
        PageController,
        PageView,
        Positioned,
        SingleTickerProviderStateMixin,
        Stack,
        State,
        StatefulWidget,
        TabController,
        Widget;
import 'package:ordotest/main.dart';
import 'package:ordotest/packages/indicator_boarding/lib/smooth_page_indicator.dart';

class BannerAqua extends StatefulWidget {
  const BannerAqua({Key? key}) : super(key: key);

  @override
  State<BannerAqua> createState() => _BannerAquaState();
}

class _BannerAquaState extends State<BannerAqua>
    with SingleTickerProviderStateMixin {
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

    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      height: deviceHeight / 4,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
                controller: controller,
                children: List.generate(
                  3,
                  (index) => AspectRatio(
                    aspectRatio: 821.07 / 404.85,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/banner.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                )),
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
