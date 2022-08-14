import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:lesson1/SMarT%20lady/advertizement.dart';

import 'aboutCourse.dart';

import 'dropDawnButton.dart';

class MainPage extends StatelessWidget {
  List<String> images = ['assets/girl.jpg', 'assets/girl1.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/Logo.svg'),
            ),
            DropDawn(),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: 2,
                        options: CarouselOptions(
                          height: 200,
                          aspectRatio: 1,
                          viewportFraction: 1,
                          // enlargeCenterPage: true,
                          autoPlay: true,
                        ),
                        itemBuilder: (ctx, index, realIdx) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 200,
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                        child: Advertizement(
                          title: 'Kurslarymyz',
                          card: true,
                          arrow: true,
                        ),
                        onTap: () {
                          Diolog(context);
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Advertizement(
                        title: 'Mentarlarymyz',
                        card: false,
                        arrow: false,
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Diolog(
    BuildContext context,
  ) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Hawa"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => AboutCourse())));
      },
    );
    Widget continueButton = TextButton(
      child: Text("yok"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Kursumyza Yazylmak isleyanizmi?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
