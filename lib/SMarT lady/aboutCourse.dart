import 'package:flutter/material.dart';
import 'package:lesson1/SMarT%20lady/advertizement.dart';

class AboutCourse extends StatelessWidget {
  const AboutCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kurslarymyz'),
        elevation: 0,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1),
        itemBuilder: (_, index) => Advertizement.course(inf[index]),
        itemCount: inf.length,
      ),
    );
  }
}
