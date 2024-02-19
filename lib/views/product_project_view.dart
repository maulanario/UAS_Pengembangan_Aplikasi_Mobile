import 'package:degrees_36_interior_app/components/dialog_images_furniture.dart';
import 'package:degrees_36_interior_app/components/dialog_images_project.dart';
import 'package:degrees_36_interior_app/components/item_product.dart';
import 'package:degrees_36_interior_app/components/item_product_project.dart';

import 'package:flutter/material.dart';

class ProductProjectView extends StatelessWidget {
  final List<String> images1 = ["bloods1.PNG", "bloods2.PNG", "bloods3.PNG"];
  final List<String> images2 = ["catlees1.PNG", "catlees2.PNG", "catlees3.PNG"];
  final List<String> images3 = [
    "indoosat1.PNG",
    "indoosat2.PNG",
    "indoosat3.PNG"
  ];
  final List<String> images4 = ["rani1.PNG", "rani2.PNG", "rani3.PNG"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portofolio"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesProject(
                        images: images1,
                      );
                    },
                  );
                },
                child: const ItemProductProject(
                    name: "Bloods", location: "Bandung", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesProject(
                        images: images2,
                      );
                    },
                  );
                },
                child: const ItemProductProject(
                    name: "Mrs. F",
                    location: "Mega Endah, Cirebon",
                    image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesProject(
                        images: images3,
                      );
                    },
                  );
                },
                child: const ItemProductProject(
                    name: "Gerai Indosat",
                    location: "Cirebon",
                    image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesProject(
                        images: images4,
                      );
                    },
                  );
                },
                child: const ItemProductProject(
                    name: "De Rani",
                    location: "Indramayu",
                    image: "logo2.jpg")),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
