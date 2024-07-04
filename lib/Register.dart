import 'package:chat_app/HomaPage.dart';
import 'package:chat_app/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'model/userModel.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController number = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController image = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        elevation: 0,
        centerTitle: true,
        title: Text('Register'),
          titleTextStyle: TextStyle(color: Color(0xFF1F41BB),fontWeight: FontWeight.w900,fontSize: 25, fontFamily: 'Poppins', ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Name
              SizedBox(
                width: 357,
                child: TextFormField(
                  controller: name,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric( vertical: 25, horizontal: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF1F41BB), width: 2),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 2),
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
              SizedBox(height: 29,),
              //Number
              SizedBox(
                width: 357,
                child: TextFormField(
                  controller: number,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: 'Number',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric( vertical: 25, horizontal: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF1F41BB), width: 2),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 2),
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
              SizedBox(height: 29,),
              //Image
              SizedBox(
                width: 357,
                child: TextFormField(
                  controller: image,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: 'Image',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric( vertical: 25, horizontal: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF1F41BB), width: 2),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 2),
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
              SizedBox(height: 29,),
              //Register Button
              InkWell(
                onTap: (){
                  users.add(userModel(name: name.text, number: number.text, image: image.text));
                  setState(() {
                    currentUser = users[users.indexWhere((element) => element.number == number.text)];
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: SizedBox(
                  width: 357,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text('Register', style: TextStyle(color: Color(0xFF1F41BB),fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //Login Button
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                },
                child: SizedBox(
                  width: 357,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1F41BB),
                      borderRadius: BorderRadius.circular(15),
                    ),padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, ),textAlign: TextAlign.center,),
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
