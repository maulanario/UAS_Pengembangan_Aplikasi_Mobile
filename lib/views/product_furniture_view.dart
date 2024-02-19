import 'package:degrees_36_interior_app/components/dialog_images_furniture.dart';
import 'package:degrees_36_interior_app/components/item_product.dart';
import 'package:flutter/material.dart';

class ProductFurnitureView extends StatelessWidget {
  final List<String> images2 = ["kursi.jpg", "kursi2.jpg", "kursi3.jpg"];
  final List<String> images1 = ["meja1.PNG", "meja2.PNG", "meja3.PNG"];
  final List<String> images3 = ["rias1.PNG", "rias2.PNG", "rias3.PNG"];
  final List<String> images4 = ["rak1.PNG", "rak2.PNG", "rak2.PNG"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Furniture"),
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
                      return DialogImagesFurniture(
                        images: images1,
                      );
                    },
                  );
                },
                child: const ItemProduct(name: "Meja", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesFurniture(
                        images: images2,
                      );
                    },
                  );
                },
                child: const ItemProduct(name: "Kursi", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesFurniture(
                        images: images3,
                      );
                    },
                  );
                },
                child:
                    const ItemProduct(name: "Meja Rias", image: "logo2.jpg")),
            const SizedBox(height: 15),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (e) {
                      return DialogImagesFurniture(
                        images: images4,
                      );
                    },
                  );
                },
                child: const ItemProduct(name: "Rak", image: "logo2.jpg")),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
