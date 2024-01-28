import 'package:fash_news/tab_bar/tab_views/tab_view_1.dart';
import 'package:fash_news/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabBarItems = [
    'For you',
    'U.S. Politics',
    'Tech Cos',
    'Cooking',
    'Health',
  ];

  final _bottomNaviationItem = [
    {'img': 'img/home-variant.png', 'label': 'Home'},
    {'img': 'img/discovery.png', 'label': 'Discover'},
    {'img': 'img/bookmark.png', 'label': 'Saved'},
    {'img': 'img/profile-user.png', 'label': 'Profile'},
  ];

  List<BottomNavigationBarItem> bottomBarItemsWidget(List<dynamic> items) {
    List<BottomNavigationBarItem> tabsWidget = [];

    for (var item in items) {
      tabsWidget.add(BottomNavigationBarItem(
          activeIcon: Image.asset(
            item['img'],
            width: 24.0,
            color: Color(text_dark),
          ),
          icon: Image.asset(
            item['img'],
            width: 24.0,
            color: Color(text_gray),
          ),
          label: item['label']));
    }
    return tabsWidget;
  }

  List<Widget> tabBarItemsWidget(List<String> items) {
    List<Widget> tabsWidget = [];
    for (var item in items) {
      tabsWidget.add(Text(item));
    }
    return tabsWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Color(brd_lgthgr), blurRadius: 50.0)]),
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: BottomNavigationBar(
            selectedFontSize: 12,
            onTap: (index) => setState(() {
                  _currentIndex = index;
                }),
                type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Color(text_dark),
            unselectedItemColor: Color(text_gray),
            backgroundColor: Colors.white,
            elevation: 0.0,
            items: bottomBarItemsWidget(_bottomNaviationItem)),
      ),
      backgroundColor: Color(bg_white),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 42.0,
                        height: 42.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Image.asset(
                          'img/profile.jpg',
                          fit: BoxFit.cover,
                        )),
                    const Text(
                      'Breaking News',
                      style: TextStyle(
                          fontFamily: 'OutFit',
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: const EdgeInsets.all(11.0),
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(brd_lgthgr)),
                            left: BorderSide(color: Color(brd_lgthgr)),
                            bottom: BorderSide(color: Color(brd_lgthgr)),
                            right: BorderSide(color: Color(brd_lgthgr)),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(bg_white)),
                      child: Image.asset(
                        'img/bell.png',
                        width: 16,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                        child: Image.asset(
                          'img/search.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(maxHeight: 50.0),
                      filled: true,
                      fillColor: Color(bg_white),
                      hintText: 'Find Interesting news',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 100.0),
                      hintStyle: TextStyle(
                          color: Color(text_gray),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OutFit'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(text_dark)),
                          borderRadius: BorderRadius.circular(50.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(brd_lgthgr)),
                          borderRadius: BorderRadius.circular(50.0))),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: DefaultTabController(
                length: tabBarItems.length,
                child: Column(
                  children: [
                    TabBar(
                        labelPadding:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 17.0, 0.0),
                        tabAlignment: TabAlignment.start,
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        isScrollable: true,
                        unselectedLabelColor: Color(text_gray),
                        labelColor: Color(text_dark),
                        labelStyle: const TextStyle(
                            fontFamily: 'OutFit', fontWeight: FontWeight.w500),
                        indicator: BoxDecoration(color: Color(bg_white)),
                        dividerHeight: 0.0,
                        tabs: tabBarItemsWidget(tabBarItems)),
                    Expanded(
                      child: TabBarView(children: [
                        TabView1(),
                        Text('For You'),
                        Text('For You'),
                        Text('For You'),
                        Text('For You'),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
