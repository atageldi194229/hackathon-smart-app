import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'informations.dart';

class MyCoursesInfo extends StatefulWidget {
  MyCoursesInfo({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<MyCoursesInfo> createState() => _MyCoursesInfoState();
}

class _MyCoursesInfoState extends State<MyCoursesInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          child: Stack(
            children: [
              Image.asset(
                'assets/Rectangle 13.png',
              ),
              Positioned(
                child: Image.asset(
                  'assets/position.png',
                  height: 60,
                  width: 60,
                ),
                top: 35,
                left: 10,
              ),
            ],
          ),
        ),
        Information(widget.title ?? ''),
      ],
    );
  }
}

class OurMentors extends StatelessWidget {
  final String? info;
  final String? info1;
  final String? info2;
  const OurMentors({Key? key, this.info, this.info1, this.info2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/3.png',
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            '$info',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Center(
          child: Text(
            '$info1',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            '$info2',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
