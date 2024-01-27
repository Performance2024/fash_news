import 'package:fash_news/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String buttonText;
  String imgUrl;

  CustomTextButton({super.key, required this.buttonText, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => 'true',
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          padding: const EdgeInsets.symmetric(
            vertical: 13.0,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                    color: Color(brd_lgthgr),
                  ),
                  top: BorderSide(
                    color: Color(brd_lgthgr),
                  ),
                  right: BorderSide(
                    color: Color(brd_lgthgr),
                  ),
                  left: BorderSide(
                    color: Color(brd_lgthgr),
                  )),
              borderRadius: BorderRadius.circular(50.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imgUrl,
                width: 24.0,
              ),
              const SizedBox(width: 10.0),
              Text(
                buttonText,
                style: TextStyle(
                    color: Color(text_dark),
                    fontFamily: 'Outfit',
                    fontSize: 15.0),
              )
            ],
          ),
        ));
  }
}
