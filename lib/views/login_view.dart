import 'package:degrees_36_interior_app/bottom_navigation_app.dart';
import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:degrees_36_interior_app/views/categories_view.dart';
import 'package:degrees_36_interior_app/views/dashboard_view.dart';
import 'package:degrees_36_interior_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

class LoginView extends StatefulWidget {
  LoginView({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _visible = false;
  final userController = TextEditingController();
  final pwdController = TextEditingController();
  Future userLogin() async {
    String url = "https://bfc.isibi.web.id/";
    setState(() {
      _visible = true;
    });

    var data = {
      'username': userController.text,
      'password': pwdController.text,
    };
    log("DATA === $data");
    log("URL === $url");
    var response = await http.post(Uri.parse(url), body: json.encode(data));
    log("Status Code === ${response.statusCode}");
    if (response.statusCode == 200) {
      log("RESPONSE === ${response.body}");
      print(response.body);
      setState(() {
        _visible = false;
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeView()));
    } else {
      setState(() {
        _visible = false;
        showMessage("Error during connecting to Server.");
      });
    }
  }

  Future<dynamic> showMessage(String _msg) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(_msg),
          actions: <Widget>[
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: _visible,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: LinearProgressIndicator(),
              ),
            ),
            Container(
              height: 200,
            ),
            Text(
              '36 Degrees Interior',
              style: TextStyle(
                  color: cPrimaryBrown,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                width: 200,
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/logo2.jpg"),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Theme(
                      data: new ThemeData(
                        primaryColor: cPrimaryBrown,
                        primaryColorDark: cPrimaryBrown,
                        hintColor: cPrimaryBrown,
                      ),
                      child: TextFormField(
                        controller: userController,
                        cursorColor: cPrimaryBrown,
                        decoration: InputDecoration(
                          focusedBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          errorBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedErrorBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          errorStyle: TextStyle(
                            color: cPrimaryBrown,
                          ),
                          labelText: 'Username',
                          labelStyle: TextStyle(color: cPrimaryBrown),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: cPrimaryBrown,
                          ),
                          border: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'Enter username',
                          hintStyle: TextStyle(color: cPrimaryBrown),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter username';
                          }
                          return null;
                        },
                        style: TextStyle(color: cPrimaryBrown),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: cPrimaryBrown,
                        primaryColorDark: cPrimaryBrown,
                        hintColor: cPrimaryBrown,
                      ),
                      child: TextFormField(
                        controller: pwdController,
                        obscureText: true,
                        cursorColor: cPrimaryBrown,
                        decoration: InputDecoration(
                          focusedBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          errorBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedErrorBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          border: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: cPrimaryBrown,
                              style: BorderStyle.solid,
                            ),
                          ),
                          errorStyle: TextStyle(
                            color: cPrimaryBrown,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: cPrimaryBrown),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: cPrimaryBrown,
                          ),
                          hintText: 'Enter password',
                          hintStyle: TextStyle(color: cPrimaryBrown),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        style: TextStyle(color: cPrimaryBrown),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => {
                          if (_formKey.currentState!.validate()) {userLogin()}
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(cPrimaryBrown),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
