import 'dart:io';

import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {

  RegisterScreen({super.key,
  });

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final DatabaseController _controller=DatabaseController();
  String? name;
  String?email;
  String?password;

  File? image;

  @override
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _confirmcontroller = TextEditingController();




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color(0xffffffff),
        ),
        backgroundColor: Colors.purple,
        title: Text(
          "Create Account",
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: image != null
                            ? FileImage(image!)
                            : null,
                        child: image == null
                            ? const Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.purple,
                        )
                            : null,
                      ),


                      Positioned(
                        bottom: 0,
                        right: 0,

                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                width: double.infinity,
                                height: 200,
                                child: Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Text("Choose Your Image"),
                                    SizedBox(height: 10),
                                    Column(
                                      children: [
                                        ListTile(
                                          leading: Icon(Icons.camera),
                                          title: Text("Camera"),
                                        onTap: (){},
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.photo),
                                          title: Text("Gallary"),
                                         onTap: (){},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add_circle, color: Colors.purple),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsetsGeometry.all(20),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          controller: _namecontroller,

                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          controller: _emailcontroller,
                        ),

                        SizedBox(height: 20),

                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          controller: _passwordcontroller,
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          controller: _confirmcontroller,
                        ),
                        SizedBox(height: 20),

                        SizedBox(
                          width: double.infinity,
                          height: 50,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: (){},
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}







