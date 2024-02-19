import 'package:degrees_36_interior_app/utils/color.dart';
import 'package:flutter/material.dart';

class DialogImagesFurniture extends StatefulWidget {
  const DialogImagesFurniture({
    super.key,
    this.images = const [],
  });
  final List<String> images;

  @override
  State<DialogImagesFurniture> createState() => _DialogImagesFurnitureState();
}

class _DialogImagesFurnitureState extends State<DialogImagesFurniture> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (e) {
              index = e;
              setState(() {});
            },
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              var row = widget.images[index];
              return Image.asset("assets/images/furniture/$row");
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: cPrimaryBrown,
              ),
              child: Text(
                "${index + 1}/${widget.images.length}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
