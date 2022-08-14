import 'package:flutter/material.dart';
import 'package:lesson1/SMarT%20lady/aboutCourse.dart';

import 'myCoursesInfo.dart';

List<String> inf = [
  'Back-End Developer',
  'Web Developer',
  'Dizayner',
  'Mobile Developer',
];
List<String> surname = [
  'Çaryýew ',
  'Saparmyradowa',
  'Sambiyewa',
  'Atabayewa',
  ''
];
List<String> name = [
  'Agamayrat',
  'Merjen',
  'Ayshe',
  'Soyli ',
];

 class Advertizement extends StatelessWidget {
  bool card;
  String title;
  bool arrow = true;
  Advertizement({required this.title, required this.card, required this.arrow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 387,
      // height: 330, // TODO
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => AboutCourse()))),
                child: arrow == true
                    ? Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(233, 97, 33, 1)),
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          size: 8,
                        ),
                      )
                    : Container(),
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.all(5),
            height: 275,
            child: ListView.builder(
              itemCount: inf.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => card == true
                  ? course(inf[index])
                  : tutor(
                      name[index],
                      surname[index],
                      inf[index],
                    ),
            ),
          ),
        ],
      ),
    );
  }

   static course(String a) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 10),
      child: Container(
        margin: EdgeInsets.only(left: 5),
        width: 195,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.5,
              color: Color.fromRGBO(185, 188, 190, 1),
            )
          ],
        ),
        child: MyCoursesInfo(title: a),
      ),
    );
  }

  tutor(String b, String c, String d) {
    arrow = false;
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 10),
      child: Container(
        margin: EdgeInsets.only(left: 5),
        width: 199,
        height: 245,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: OurMentors(
          info: b,
          info1: c,
          info2: d,
        ),
      ),
    );
  }
}
