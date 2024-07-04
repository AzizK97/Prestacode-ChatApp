import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'model chat.dart';

class Chat_2 extends StatefulWidget {
  const Chat_2({super.key});

  @override
  State<Chat_2> createState() => _Chat_2State();
}

class _Chat_2State extends State<Chat_2> {
  TextEditingController text=TextEditingController();
  String myName='chat2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Text(
          'Chat 2',
          style: TextStyle(color: Color(0xFF42526E), fontSize: 20),
        ),
      ),
      body: Container(
        color: Colors.white10,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (_, index) => BubbleSpecialThree(
                    isSender: chat[index].senderName == myName ? true : false,
                    text: chat[index].text.toString(),
                    color: chat[index].senderName == myName
                        ? Colors.blueAccent
                        : Color(0xFFF4F5F7),
                    tail: true,
                    textStyle: chat[index].senderName == myName
                        ? const TextStyle(color: Colors.white, fontSize: 16)
                        : const TextStyle(color: Colors.black, fontSize: 16),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white10,
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: text,
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      chat.add(modelChat(text.text, myName));
                      text.text='';
                    });
                  }, icon: Icon(Icons.send, color: Colors.blueAccent,),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
