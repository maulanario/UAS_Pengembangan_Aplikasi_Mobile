import 'package:degrees_36_interior_app/components/dialog_images_furniture.dart';
import 'package:degrees_36_interior_app/components/dialog_images_interior.dart';
import 'package:degrees_36_interior_app/components/item_product.dart';
import 'package:flutter/material.dart';

class ProductInteriorView extends StatelessWidget {
  final List<String> images1 = ["toko1.PNG", "toko2.PNG", "toko3.PNG"];
  final List<String> images2 = ["kithcen1.PNG", "kithcen2.PNG", "kithcen3.PNG"];
  final List<String> images3 = ["lemari1.PNG", "lemari2.PNG", "lemari3.PNG"];
  final List<String> images4 = ["bedroom1.jpg", "bedroom2.jpg", "bedroom3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interior"),
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
                      return DialogImagesInterior(
                        images: images1,
                      );
                    },
                  );
                },
                child: const ItemProduct(name: "Toko", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesInterior(
                        images: images2,
                      );
                    },
                  );
                },
                child:
                    const ItemProduct(name: "Kitchen Set", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesInterior(
                        images: images3,
                      );
                    },
                  );
                },
                child: const ItemProduct(
                    name: "Lemari Custom", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesInterior(
                        images: images4,
                      );
                    },
                  );
                },
                child:
                    const ItemProduct(name: "Bedroom Set", image: "logo2.jpg")),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
