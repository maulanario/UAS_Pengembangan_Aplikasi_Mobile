// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemProductProject extends StatelessWidget {
  const ItemProductProject({
    Key? key,
    required this.name,
    required this.location,
    required this.image,
  }) : super(key: key);

  final String name;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 2,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/$image",
                // "https://picsum.photos/id/1/200/300",
                width: 140,
                height: 80,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontSize: 17, color: cPrimaryBrown)),
                      Text(location,
                          style: const TextStyle(
                              fontSize: 17, color: cPrimaryBrown)),
                    ],
                  )),
              const Icon(
                Icons.arrow_forward_ios,
                color: cPrimaryBrown,
              )
            ],
          ))),
    );
  }
}
