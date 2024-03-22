import 'package:flutter/material.dart';


class DiscountCard extends StatelessWidget {

  final String image;
  final String title;
  
  
  const DiscountCard({
    super.key, required this.image, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     child: ClipRRect(
        borderRadius:
            BorderRadius.circular(20.0), // Apply circular border
        child: Stack(
          children: [
            Image.asset(
             image,
              width: 130,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Container(
              width: 130,
              height: 200,
              
                  // Adjust opacity as needed
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4), 
                    borderRadius: BorderRadius.circular(20.0),
                  ),
            ),
             Positioned(
              left: 40.0,
              top:90.0,
              child: Text(
                title,
                style:  const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(176, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
