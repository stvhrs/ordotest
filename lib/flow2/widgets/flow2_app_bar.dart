import 'package:flutter/material.dart';
import '../../main.dart';
import 'package:ordotest/packages/indicator_boarding/lib/smooth_page_indicator.dart';

class AppBarFLow2 extends StatefulWidget {
  final String imageUrl;
  const AppBarFLow2(this.imageUrl, {Key? key}) : super(key: key);

  @override
  State<AppBarFLow2> createState() => _AppBarFLow2State();
}

class _AppBarFLow2State extends State<AppBarFLow2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  double top = 0;
  late PageController _pageController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: _selectedIndex);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: const Color.fromRGBO(252, 248, 248, 1),
        automaticallyImplyLeading: false,
        expandedHeight: deviceHeight / 2.5,
        floating: true,
        pinned: true,
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left,
                    color: Color.fromRGBO(100, 161, 244, 1),
                  )),
              const Text(
                'PRODUCT DETAIL',
                style: TextStyle(
                    color: Color.fromRGBO(100, 161, 244, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          icon1,
          icon2
        ],
        flexibleSpace: display);
  }

  Widget get icon1 => const Icon(
        Icons.shopping_bag,
        size: 24,
        color: Color.fromRGBO(100, 161, 244, 1),
      );

  Widget get icon2 => const Padding(
        padding: EdgeInsets.only(right: 18, left: 8.0),
        child: Icon(
          Icons.notifications,
          size: 24,
          color: Color.fromRGBO(255, 72, 90, 1),
        ),
      );

  Widget get display {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      top = constraints.biggest.height;

      return FlexibleSpaceBar(
          background: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: top / (deviceHeight / 2.5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Hero(
                      tag: widget.imageUrl,
                      child: PageView(
                          controller: _pageController,
                          children: List.generate(
                            3,
                            (_) => Container(
                              padding:
                                  const EdgeInsets.only(top: 90, bottom: 9),
                              child: Image.asset(
                                widget.imageUrl,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotHeight: 6,
                        dotColor: Colors.blue.shade200,
                        dotWidth: 15,
                        activeDotColor: Colors.blue.shade700),
                  ),
                  SizedBox(
                    height: deviceHeight / 20,
                  )
                ])),
      ));
    });
  }
}
