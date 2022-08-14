import 'package:flutter/material.dart';
import 'package:lesson1/main.dart';

import '../firebase_helper.dart';

List<String> myList = [
  'Back-End Developer',
  'Web Developer',
  'Mobile Developer',
];
List<String> title = ['Development', 'Dizayn'];

class Catagory extends StatelessWidget {
  const Catagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            ListTile(
                leading: Icon(Icons.menu, color: Colors.black54, size: 18),
                onTap: () async {
                  await sendPushMessage('message ');
                  // sendMessage();
                  // login();
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Kategoriýalar",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                )),
            const Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 140,
              child: ListView.builder(
                itemCount: title.length,
                itemBuilder: (BuildContext, index) {
                  return ExpansionTile(
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black87,
                    ),
                    title: Text(title[index]),
                    children: [
                      Container(
                        height: 105,
                        child: ListView.builder(
                          itemCount: myList.length,
                          itemBuilder: ((context, index) {
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    myList[index],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        backgroundColor:
                                            Color.fromRGBO(255, 255, 255, 0.5)),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
