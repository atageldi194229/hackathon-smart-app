import 'package:flutter/material.dart';
import 'package:lesson1/models/message.dart';

import '../firebase_helper.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> messages = [];
  List<Map<String, dynamic>> data = [{}];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Chat screen'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: 10,
          itemBuilder: (con, i) => Container(
                width: MediaQuery.of(context).size.width - 25,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                border: Border.all(color: Colors.black12)),
                            child: Text('Salam'),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(.5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            border: Border.all(color: Colors.black12)),
                        child: Text('Salam'),
                      )
                    ]),
              )),
      bottomNavigationBar: chatField(context),
    );
  }

  Container chatField(BuildContext context) {
    return Container(
        height: 55,
        padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.brown.withOpacity(.1)),
        child: Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 70,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blueAccent)),
              ),
              onSaved: (v) {},
            ),
          ),
          GestureDetector(
            onTap: () {
              sendPushMessage(controller.text);
              controller.clear();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Icon(Icons.send, size: 35),
            ),
          )
        ]));
  }
}
