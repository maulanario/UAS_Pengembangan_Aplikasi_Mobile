import 'package:degrees_36_interior_app/bottom_navigation_app.dart';
import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:degrees_36_interior_app/views/dashboard_view.dart';
import 'package:degrees_36_interior_app/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: cSecondaryBrown,
        hintColor: cPrimaryBrown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DashboardView(), // Ganti MyHomePage dengan LoginPage
    );
  }
}
