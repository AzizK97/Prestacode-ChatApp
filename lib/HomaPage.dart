import 'package:chat_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Chat1.dart';
import 'Chat2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          title: Text(
            'Home ${currentUser.name}',
            style: TextStyle(color: Color(0xFF42526E), fontSize: 20),
          ),
        ),
        body:Container(
          decoration: BoxDecoration(
            color: Color(0xFFF4F5F7),
          ),
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) =>InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chat_1()));
              },

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(radius: 20,backgroundImage: NetworkImage(users[index].image),),
                      title: Text(users[index].name, style: TextStyle(color: Colors.black, fontSize: 20)),
                    ),
                  ),
                  Divider(color: Colors.grey,)
                ],
              ),
            ),

          ),

        ),
      ),
    );
  }
}
