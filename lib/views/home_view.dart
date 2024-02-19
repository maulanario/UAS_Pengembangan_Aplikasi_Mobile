import 'package:degrees_36_interior_app/components/item_home.dart';
import 'package:degrees_36_interior_app/components/item_product.dart';
import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:degrees_36_interior_app/views/product_furniture_view.dart';
import 'package:degrees_36_interior_app/views/product_interior_view.dart';
import 'package:degrees_36_interior_app/views/product_project_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'dart:io';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "36 Degrees Interior",
          style: TextStyle(fontSize: 25, color: cPrimaryBrown),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductInteriorView()));
                    },
                    child:
                        const ItemProduct(name: "Interior", image: "logo2.jpg"),
                  ),
                  // ItemHomeComponent(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => ProductInteriorView()));
                  //     },
                  //     icon: Icons.ac_unit_rounded,
                  //     name: "Interior")
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductFurnitureView()));
                    },
                    child: const ItemProduct(
                        name: "Furniture", image: "logo2.jpg"),
                  ),
                  // ItemHomeComponent(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) =>
                  //                   ProductFurnitureView()));
                  //     },
                  //     icon: Icons.ac_unit_rounded,
                  // name: "Furniture")
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductProjectView()));
                    },
                    child: const ItemProduct(
                        name: "Project Interior", image: "logo2.jpg"),
                  ),
                  // ItemHomeComponent(
                  //     onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ProductProjectView()));
                  //     },
                  //     icon: Icons.ac_unit_rounded,
                  //     name: "Project Interior")
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ItemHomeComponent(
                        onTap: () async {
                          try {
                            await launchUrlString(
                                'whatsapp://send?phone=6281313150678&text=Halo 36 Degrees Interior, saya tertarik untuk menghitung estimasi biaya Desain Interior');
                          } catch (e) {
                            log("ERROR LAUNCH WA == $e");
                          }
                          // openWhatsapp(
                          //     context: context,
                          //     text: "Silahkan Pesan Sesuai dengan yang anda pilih",
                          //     number: "+62882001060357");
                        },
                        icon: Icons.phone,
                        name: "Hubungi Kami")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
