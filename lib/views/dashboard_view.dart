import 'package:degrees_36_interior_app/bottom_navigation_app.dart';
import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:degrees_36_interior_app/views/login_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cSecondaryBrown,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 30),
            Image.asset("assets/logo2.jpg", height: 100, width: 250),
            const SizedBox(height: 40),
            const Text(
              "Selamat Datang",
              style: TextStyle(
                  color: cPrimaryBrown,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            const Text(
              "Menerima Request Model Barang Apapun Sesuai Keinginan Anda",
              style: TextStyle(color: cPrimaryBrown, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => LoginView(title: "Login"))));
              },
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: cPrimaryBrown,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    "Lihat Sekarang",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
