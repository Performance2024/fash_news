import 'package:carousel_slider/carousel_slider.dart';
import 'package:fash_news/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TabView1 extends StatefulWidget {
  TabView1({super.key});

  @override
  State<TabView1> createState() => _TabView1State();
}

class _TabView1State extends State<TabView1> {
  final List _sliderImages = [
    'img/img_1.jpg',
    'img/img_2.jpg',
    'img/img_3.jpg',
    'img/img_4.jpg'
  ];
  final List _postListImages = [
    'img/img_1.jpg',
    'img/img_2.jpg',
    'img/img_3.jpg',
    'img/img_4.jpg'
  ];

  double _currentSlide = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(children: [
            CarouselSlider.builder(
              itemCount: _sliderImages.length,
              itemBuilder: (context, index, indexPageView) => Container(
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          _sliderImages[index],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    color: Colors.black26,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(bg_white),
                              borderRadius: BorderRadius.circular(50.0)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 10.0),
                          child: Text(
                            'Trending',
                            style: TextStyle(
                                color: Color(text_dark), fontFamily: 'OutFit'),
                          ),
                        ),
                        const SizedBox(
                          height: 52.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '34 articles',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'OutFit'),
                            ),
                            Text(
                              '1720 reads',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'OutFit'),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'Regulators close Signature Bank, second shuttered',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OutFit',
                              fontSize: 17.0),
                        )
                      ],
                    ),
                  )),
              options: CarouselOptions(
                  enlargeFactor: 0.2,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  initialPage: 1,
                  onPageChanged: (index, raison) =>
                      setState(() => _currentSlide = index.toDouble())),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 00.0),
              child: SmoothIndicator(
                  effect: ExpandingDotsEffect(
                      dotHeight: 7.0,
                      dotWidth: 7.0,
                      activeDotColor: Color(text_gray),
                      dotColor: Color(brd_lgthgr)),
                  offset: _currentSlide,
                  count: _sliderImages.length,
                  size: const Size(50, 50)),
            ),
          ]),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommanded',
                        style: TextStyle(
                            color: Color(text_dark),
                            fontFamily: 'OutFit',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'See More',
                        style: TextStyle(
                            color: Color(text_gray),
                            fontFamily: 'OutFit',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: _postListImages.length,
                      itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(children: [
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                                width: 100,
                                height: 100,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                        image: AssetImage(
                                      _postListImages[index],
                                    )),
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Education',
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        color: Color(text_gray),
                                        fontFamily: 'Outfit'),
                                  ),
                                  const Text(
                                    "Killing of teacher and hamas \nassault set a jittery france",
                                    style: TextStyle(
                                        fontFamily: 'OutFit',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle),
                                          child: Image.asset(
                                            'img/profile.jpg',
                                            width: 35.0,
                                            fit: BoxFit.cover,
                                          )),
                                      Text(
                                        'MCkindney',
                                        style: TextStyle(
                                            color: Color(text_gray),
                                            fontFamily: 'OutFit',
                                            fontSize: 11.0),
                                      ),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                            color: Color(text_gray),
                                            fontFamily: 'OutFit',
                                            fontSize: 11.0),
                                      ),
                                      Text(
                                        'Jun 12,2024',
                                        style: TextStyle(
                                            color: Color(text_gray),
                                            fontFamily: 'OutFit',
                                            fontSize: 11.0),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                          )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
