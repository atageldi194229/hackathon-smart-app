import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Map<String, dynamic>> data = [
    {
      'title': "Sonky tazelikler",
      "body":
          "Hackaton gecirildi,Hackaton gecirildi,Hackaton gecirildi,Hackaton gecirildi"
    },
    {
      'title': "Sonky tazelikler",
      "body":
          "Hackaton gecirildi,Hackaton gecirildi,Hackaton gecirildiHackaton gecirildi,Hackaton gecirildiHackaton gecirildi,Hackaton gecirildi"
    },
    {
      'title': "kone tazelikler",
      "body": "Hackaton gecirildiHackaton gecirildi,Hackaton gecirildi"
    },
    {
      'title': "Sonky tazelikler",
      "body":
          "Hackaton gecirildiHackaton gecirildi,Hackaton gecirildiHackaton gecirildi,Hackaton gecirildi"
    },
    {
      'title': "Sonky tazelikler",
      "body": "Hackaton gecirildiHackaton gecirildi,Hackaton gecirildi"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
                elevation: 4.0,
                // color: AppTheme.primaryColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.border_color,
                            size: 18.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            data[index]['title'],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        data[index]['body'],
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ));
  }
}
