import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:flutter/material.dart';

class ItemHomeComponent extends StatelessWidget {
  const ItemHomeComponent(
      {super.key, required this.icon, required this.name, this.onTap});

  final IconData icon;
  final String name;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            elevation: 2,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(icon, color: cPrimaryBrown),
                    const SizedBox(width: 50),
                    Text(name,
                        style: TextStyle(fontSize: 15, color: cPrimaryBrown)),
                    const SizedBox(width: 50),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: cPrimaryBrown,
                    )
                  ],
                ),
              ],
            )),
          ),
        ));

    //   Container(
    //     height: 70,
    //     decoration: BoxDecoration(
    //         border: Border.all(color: cPrimaryBrown),
    //         borderRadius: BorderRadius.circular(12),
    //         color: cWhite),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Icon(icon, color: cPrimaryBrown),
    //         Text(name, style: TextStyle(fontSize: 15, color: cPrimaryBrown)),
    //         Icon(
    //           Icons.arrow_forward_ios,
    //           color: cPrimaryBrown,
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
