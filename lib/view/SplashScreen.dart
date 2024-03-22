import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_digital_shop/main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

     Future.delayed(const Duration(seconds: 2),(){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const MainPage(),),);
     });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 255, 255, 255), Colors.white],
              begin: AlignmentDirectional.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/brand_logo.png",
              width: 60,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              "DigitalShop",
              style: TextStyle(
                fontSize: 35.0,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.grey,
              ),
            ),

           // const Text("Waste is nothing!",style: TextStyle(fontSize: 18.0,color: Colors.grey,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
