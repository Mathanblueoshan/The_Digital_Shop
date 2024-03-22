import 'package:flutter/material.dart';

class AddShopPage extends StatefulWidget {
  const AddShopPage({super.key});

  @override
  State<AddShopPage> createState() => _AddShopPageState();
}

class _AddShopPageState extends State<AddShopPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Add Shop",
          style: TextStyle(fontSize: 20.0),
        ),
       
      ),
      body: Column(
      children: [
         Card(
           child: TextFormField(
            style: const TextStyle(fontSize: 20.0),
            decoration:  const InputDecoration(
              hintText: "Seller name",hintStyle: TextStyle(fontSize: 19.0),
              prefixIconColor: Colors.green,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person,size: 30.0,),
              contentPadding: EdgeInsets.all(5.0),
              border: InputBorder.none, 
            ),
             ),
         ),

         Card(
           child: TextFormField(
            style: const TextStyle(fontSize: 20.0),
            decoration:  const InputDecoration(
              hintText: "Contact no",hintStyle: TextStyle(fontSize: 19.0),
              prefixIconColor: Colors.green,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person,size: 30.0,),
              contentPadding: EdgeInsets.all(5.0),
              border: InputBorder.none, 
            ),
             ),
         ),

         Card(
           child: TextFormField(
            style: const TextStyle(fontSize: 20.0),
            decoration:  const InputDecoration(
              hintText: "location",hintStyle: TextStyle(fontSize: 19.0),
              prefixIconColor: Colors.green,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person,size: 30.0,),
              contentPadding: EdgeInsets.all(5.0),
              border: InputBorder.none, 
            ),
             ),
         ),

         Card(
           child: TextFormField(
            style: const TextStyle(fontSize: 20.0),
            decoration:  const InputDecoration(
              hintText: "Category",hintStyle: TextStyle(fontSize: 19.0),
              prefixIconColor: Colors.green,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person,size: 30.0,),
              contentPadding: EdgeInsets.all(5.0),
              border: InputBorder.none, 
            ),
             ),
         ),


         Card(
           child: TextFormField(
            style: const TextStyle(fontSize: 20.0),
            decoration:  const InputDecoration(
              hintText: "Category",hintStyle: TextStyle(fontSize: 19.0),
              prefixIconColor: Colors.green,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person,size: 30.0,),
              contentPadding: EdgeInsets.all(5.0),
              border: InputBorder.none, 
            ),
             ),
         ),

        

      ],
      ),
    );
  }
}