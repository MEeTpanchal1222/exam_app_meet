import 'package:flutter/material.dart';

import '../uitels/color.dart';
import '../uitels/list.dart';


class Productview extends StatelessWidget {
  final int index;

  const Productview({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: GestureDetector(
            onTap: () {
                listmeetcart.add(listmeet1[index]);
            },
            child: Icon(Icons.add_box_rounded,color: colormeet,)),label: 'Add to cart',),

    BottomNavigationBarItem(icon: Icon(Icons.home,color: colormeet), label: "Home"),
    BottomNavigationBarItem(
    icon: Icon(Icons.favorite,color: colormeet), label: "Favorite"),
    BottomNavigationBarItem(
    icon: Icon(Icons.person,color: colormeet), label: "Profile"),
    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart,color: colormeet), label: "Profile"),
    ],
      ),

      appBar: AppBar(
        title: Text('Product View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              listmeet1[index]['image'],
              height: 300,
              width: 500,
            ),
            SizedBox(height: 20,),
            Divider(thickness: 2,color: Colors.grey,height: 1,),
            Row(
                children: [
                  Container(  margin: EdgeInsets.fromLTRB(50, 0, 0, 10),
                      child: Text(listmeet1[index]['name'],style: TextStyle(color: colormeet,fontSize: 27,fontWeight: FontWeight.bold),)),

                  //Container(  margin: EdgeInsets.fromLTRB(50, 0, 0, 50),
                    //  child: Text("\$${listmeet1[index]["price"]}",style: TextStyle(color: colormeet,fontSize: 35,),)),
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 50,),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 100,
              child: Image.asset('assest/page2/img.png'),
            ),
             ]
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page2/img_1.png'),
            ),
            Row(
              children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 230,
              height: 100,
              child: Image.asset('assest/page2/img_2.png'),
            ),
                Container(  margin: EdgeInsets.fromLTRB(50, 0, 0, 50),
                  child: Text("INR ${listmeet1[index]["price"]}",style: TextStyle(color: colormeet,fontSize: 35,),)),
      ],
            )
          ],
        ),
      ),
    );
  }
}

