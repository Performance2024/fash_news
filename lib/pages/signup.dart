import 'package:carousel_slider/carousel_slider.dart';
import 'package:fash_news/components/custom_text_button.dart';
import 'package:fash_news/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final List sliderImages = [
    'img/img_1.jpg',
    'img/img_2.jpg',
    'img/img_3.jpg',
    'img/img_4.jpg',
    'img/img_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(bg_white),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.00, 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CarouselSlider.builder(
                        itemCount: sliderImages.length,
                        itemBuilder: (context, index, pageViewRealIndex) =>
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(sliderImages[index])),
                                  color: Color(bg_white),
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                        options: CarouselOptions(
                            aspectRatio: 2,
                            viewportFraction: 0.5,
                            enlargeCenterPage: true)),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Explore Your',
                        style: TextStyle(
                          height: 1,
                            fontFamily: 'OutFit',
                            fontSize: 35.0,
                            fontWeight: FontWeight.normal)),
                    const Text('News Flasher',
                    
                        style: TextStyle(
                          height: 1,
                            fontFamily: 'OutFit',
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    CustomTextButton(
                        buttonText: 'Sign up with Google',
                        imgUrl: 'img/google.png'),
                    CustomTextButton(
                        buttonText: 'Sign up with Email',
                        imgUrl: 'img/facebook.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Color(text_dark),
                              fontFamily: 'Outfit',
                              fontSize: 11.0),
                        ),
                        Text(
                          ' Sign in',
                          style: TextStyle(
                              color: Color(text_dark),
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 11.0),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By signingup, you agree to out ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Outfit',
                                    fontSize: 11.0),
                              ),
                              Text(
                                ' Terms of Service ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.0,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'and ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Outfit',
                                    fontSize: 11.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'acknowledge that our',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Outfit',
                                    fontSize: 11.0),
                              ),
                              Text(
                                ' Privacy Policy ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.0,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'applies to you',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Outfit',
                                    fontSize: 11.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
