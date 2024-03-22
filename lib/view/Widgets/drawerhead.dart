import 'package:flutter/material.dart';

class MyDrawerHead extends StatefulWidget {
  const MyDrawerHead({super.key});

  @override
  State<MyDrawerHead> createState() => _MyDrawerHeadState();
}

class _MyDrawerHeadState extends State<MyDrawerHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200.0,
      padding: const EdgeInsets.only(top :20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/guavas.jpg"),),
            ),

          ),
          const Text("HHGDSM JJJF",style: TextStyle(fontSize: 20.0,color: Colors.white),),
          const Text("kjkhgsghja@gmail.com",style: TextStyle(color: Colors.white),),
        ]
      ),
    );
  }
}