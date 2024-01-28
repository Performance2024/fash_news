import 'package:fash_news/utils/colors.dart';
import 'package:flutter/material.dart';

class Publisher extends StatefulWidget {
  Publisher({super.key});

  @override
  State<Publisher> createState() => _PublisherState();
}

class _PublisherState extends State<Publisher> {
  final List listElement = [
    {
      'title': 'The Business Of Fashion',
      'img': 'img/profile.jpg',
      '_isSelected': false
    },
    {
      'title': 'The New York Times',
      'img': 'img/profile.jpg',
      '_isSelected': true
    },
    {
      'title': 'Consumer Report',
      'img': 'img/profile.jpg',
      '_isSelected': false
    },
    {
      'title': 'The New York Times',
      'img': 'img/profile.jpg',
      '_isSelected': false
    },
    {
      'title': 'Fianancial Fashion',
      'img': 'img/profile.jpg',
      '_isSelected': true
    },
    {'title': 'The Atlantics', 'img': 'img/profile.jpg', '_isSelected': false},
    {'title': 'Bloomberg', 'img': 'img/profile.jpg', '_isSelected': false},
    {'title': 'Noahpinion', 'img': 'img/profile.jpg', '_isSelected': false},
  ];
  int _numberPfItems = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _numberPfItems > 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(text_dark))),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text('Subscribe (${_numberPfItems})',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'OutFit',
                          fontSize: 20.0)),
                ),
                onPressed: () => print(''),
              ),
            )
          : Container(),
      backgroundColor: Color(bg_white),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(brd_lgthgr)),
                          left: BorderSide(color: Color(brd_lgthgr)),
                          bottom: BorderSide(color: Color(brd_lgthgr)),
                          right: BorderSide(color: Color(brd_lgthgr)),
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(bg_white)),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 25.0,
                    )),
                const Text(
                  'Publishers',
                  style: TextStyle(
                      fontFamily: 'OutFit',
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox()
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listElement.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                  shape: Border(bottom: BorderSide(color: Color(brd_lgthgr))),
                  leading: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Image.asset(
                      listElement[index]['img'],
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    listElement[index]['title'],
                    style: TextStyle(
                        color: Color(text_dark),
                        fontFamily: 'OutFit',
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: listElement[index]['_isSelected'] == false
                      ? Icon(
                          Icons.circle_outlined,
                          color: Color(text_gray),
                        )
                      : Icon(Icons.check_circle),
                  onTap: () {
                    setState(() {
                      listElement[index]['_isSelected'] =
                          !listElement[index]['_isSelected'];
                      if (listElement[index]['_isSelected'] == true) {
                        _numberPfItems++;
                      } else {
                        _numberPfItems--;
                      }
                    });
                  },
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
