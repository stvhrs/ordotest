import 'package:flutter/material.dart';
import 'package:ordotest/flow2/widgets/flow2_top_bar.dart';
import 'package:ordotest/main.dart';
import 'package:ordotest/packages/indicator_boarding/lib/smooth_page_indicator.dart';

class Flow2Screen extends StatefulWidget {
  final String imageUrl;
  const Flow2Screen(this.imageUrl, {Key? key}) : super(key: key);

  @override
  State<Flow2Screen> createState() => _Flow2ScreenState();
}

class _Flow2ScreenState extends State<Flow2Screen>
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

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(deviceHeight / 10), child: const TopBar2()),
        body: Column(
          children: [
            SizedBox(
                height: deviceHeight / 4,
                child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Hero(
                            tag: widget.imageUrl,
                            child: PageView(
                              controller: controller,
                              children: <Widget>[
                                Image.asset(
                                  widget.imageUrl,
                                  fit: BoxFit.contain,
                                ),
                                Image.asset(
                                  widget.imageUrl,
                                  fit: BoxFit.contain,
                                ),
                                Image.asset(
                                  widget.imageUrl,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                         Positioned(bottom: -20,
                           child: SmoothPageIndicator(
                                controller: controller,
                                count: 3,effect: WormEffect(
                                  dotHeight: 8,
                                  dotColor: Colors.blue.shade700,
                                  dotWidth: 20,
                                  activeDotColor: Colors.blue.shade200,
                                ),
                              ),
                         ),
                          
                        ]))),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.document_scanner,color: Colors.grey,),
                Icon(Icons.compare_arrows_rounded, color: Colors.grey),
                Icon(Icons.home, color: Colors.grey),
                Icon(Icons.graphic_eq_sharp, color: Colors.grey),
                Icon(Icons.person, color: Colors.grey)
              ]),
        ),
      ),
    );
  }
}
