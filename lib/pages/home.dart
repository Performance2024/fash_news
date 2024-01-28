import 'package:fash_news/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final tabBarItems = [
    'For you',
    'U.S. Politics',
    'Tech Cos',
    'Cooking ',
    'Health ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: const DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(tabs: [
                      Tab(text: 'For You'),
                      Tab(text: 'For You'),
                      Tab(text: 'For You'),
                      Tab(text: 'For You'),
                    ]),
                    Expanded(
                      child: TabBarView(children: [
                        Text('1'),
                        Text('2'),
                        Text('3'),
                        Text('4'),
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
