import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  String title;
  Information(this.title);
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontFamily: 'Raleway'),
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.yellow,
            endIndent: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '-HTML\n-CSSS\nJS',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mohleti:'),
                    Text(
                      //UI gorkezay haysy yeri
                      '3 ay',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text('Adam sany:'),
                    Text(
                      '10 adam',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
