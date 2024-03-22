import 'package:flutter/material.dart';

class Category_Items extends StatelessWidget {
  final String img;
  final String label;
  const Category_Items({super.key, required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  img,
                ),
              ),
            ),
             Text(
              label,
              style: const TextStyle(fontSize: 14.0),
            ),
          ],
        );
      
  }
}
