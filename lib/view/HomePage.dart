import 'package:flutter/material.dart';


import 'package:the_digital_shop/view/Widgets/DiscountCard.dart';
import 'package:the_digital_shop/view/Widgets/banner.dart';
import 'package:the_digital_shop/view/Widgets/category.dart';
import 'package:the_digital_shop/view/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 20.0),
        ),
        actions: [
        
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const CartPage()));
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ],
      ),

     


      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //advertise banner section
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    banner(
                      image: "assets/banner4.jpg",
                      title: "DigitalShop",
                      left: 130.0,
                      top: 80.0,
                      color: Colors.green,
                    ),
                    banner(
                      image: "assets/banner1.jpg",
                      title: "Juicy Delights,\n Every Day!",
                      left: 30.0,
                      top: 40.0,
                      color: Colors.grey,
                    ),
                    banner(
                      image: "assets/fresh_banner.jpg",
                      title: "Eat fresh, live healthy.",
                      left: 70.0,
                      top: 150.0,
                      color: Colors.grey,
                    ),
                    banner(
                      image: "assets/banner6.jpg",
                      title: "Harvest happiness \nwith every bite.",
                      left: 180.0,
                      top: 70.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Category_Items(
                      img: "assets/veg_cat.png",
                      label: "vegetables",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Category_Items(
                      img: "assets/fruit_cat.png",
                      label: "fruits",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Category_Items(
                      img: "assets/fish_cat.png",
                      label: "fish",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Category_Items(
                      img: "assets/snacks_cat.png",
                      label: "snacks",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Category_Items(
                      img: "assets/service_cat.png",
                      label: "services",
                    ),
                  ],
                ),
              ),
          
              //next section
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discounted Products",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DiscountCard(
                      image: "assets/onion.jpg",
                      title: "veg",
                    ),
                    DiscountCard(
                      image: "assets/graps.jpg",
                      title: "fruit",
                    ),
                    DiscountCard(
                      image: "assets/snack.jpg",
                      title: "snacks",
                    ),
                    DiscountCard(
                      image: "assets/fish4.jpg",
                      title: "fish",
                    ),
                  ],
                ),
              ),
          
             SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Our Market",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
          
          
              
              
            ],
          ),
        ),
      ),
     
    );
  }
}
