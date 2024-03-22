import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Search",
          style: TextStyle(fontSize: 20.0),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_on_outlined),
          ),
        ],
      ),
      body: Container(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                 const Expanded(
                   child: Card(
                     child: TextField(
                      style: TextStyle(fontSize: 20.0),
                      decoration:  InputDecoration(
                        hintText: "Search",hintStyle: TextStyle(fontSize: 19.0),
                        prefixIconColor: Colors.green,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search,size: 30.0,),
                        contentPadding: EdgeInsets.all(5.0),
                        border: InputBorder.none, 
                      ),
                                 ),
                   ),
                 ),
                 const SizedBox(width: 10.0,),
               SizedBox(
              width: 48.0, 
              height: 48.0,
              child: FloatingActionButton(
                onPressed: () {
                  // Add onPressed action here
                },
                elevation: 4.0, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                 child: const Icon(Icons.filter_alt_outlined),
              ),
            ),
              ],
            ),


            //next grid view

            Expanded(
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              crossAxisSpacing: 10.0, 
              mainAxisSpacing: 5.0,
               ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
              return  Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(children: [
                   Image.asset("assets/vegs.jpg",),
                  const Text("Mani Store",style: TextStyle(fontSize:18.0,),),
                  const Text("Offer ",style: TextStyle(fontSize:14.0,),),

                ],),
              );
               },
              ),
            ),



          ],
        ),
      ),
      
      
    );
  }
}
