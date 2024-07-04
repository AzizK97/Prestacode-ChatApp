import 'package:chat_app/HomaPage.dart';
import 'package:chat_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController number = TextEditingController();
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        centerTitle: true,
        elevation: 0,
        title: Text('Login Page'),
        titleTextStyle: TextStyle(color: Color(0xFF1F41BB),fontWeight: FontWeight.w900,fontSize: 25, ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Number
              SizedBox(
                width: 357,
                child: TextFormField(
                  controller: number,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Number',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16,),
                      contentPadding: EdgeInsets.symmetric( vertical: 25, horizontal: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xFF1F41BB), width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Color(0xFFF1F4FF),
                    filled: true
                  ),
                ),
              ),
              if (error.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              SizedBox(height: 26,),
              //Login
              InkWell(
                onTap: () {
                  setState(() {
                    if (users.any((e) => e.number == number.text)) {
                      currentUser = users[users.indexWhere((element) => element.number == number.text)];
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                      } else {
                        error = 'User not found';
                        }
                      });
                    },
                child: SizedBox(
                  width: 357,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1F41BB),
                      borderRadius: BorderRadius.circular(15),
                    ),padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text('Login', style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //Register
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                },

                child: SizedBox(
                  width: 357,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text('Register', style: TextStyle(color: Color(0xFF1F41BB), fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
