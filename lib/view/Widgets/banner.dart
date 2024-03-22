import 'package:flutter/material.dart';


class banner extends StatelessWidget {

  final String image;
  final String title;
  final double left;
  final double top;
  final Color color;
  
  const banner({
    super.key, required this.image, required this.title, required this.left, required this.top, required this.color,
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
              width: 370,
              height: 180.0,
              fit: BoxFit.cover,
            ),
            // Container(
            //   width: 370,
            //   height: 150,
              
            //       // Adjust opacity as needed
            //       decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4), 
            //         borderRadius: BorderRadius.circular(20.0),
            //       ),
            // ),
             Positioned(
              left: left,
              top:top,
              child: Text(
                title,
                style:  TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
