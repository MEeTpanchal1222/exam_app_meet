import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../uitels/color.dart';
import '../uitels/list.dart';
import 'cartscreen.dart';
import 'detailscreen.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: colormeet), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,color: colormeet), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,color: colormeet), label: "Profile"),
              BottomNavigationBarItem(
                  icon: GestureDetector(  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, "/addcart");
                    });
                  },
                      child: Icon(Icons.shopping_cart,color: colormeet)), label: "Profile"),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                   SizedBox(width: 30,height: 10,),
                    Text('Discover',style: TextStyle(color: colormeet,fontWeight: FontWeight.bold,fontSize: 40)),

                    Spacer(),
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartScreen(),
                              ),
                            );
                          },
                          child: Image(image: AssetImage("assest/img_6.png"),height: 40,width: 40,)
                    ),
                    ),
                  ],
                ), //top logo butomn

                Container(
                    width:150,
                    height: 65,
                    margin: EdgeInsets.fromLTRB(0, 20, 190, 0),
                    child: Text.rich(
                            TextSpan(
                              text: "Hii..  MeetR panchal",
                              style: TextStyle(
                                fontSize: 18,
                                decorationColor: Colors.black87,
                              ),
                            )

                    )),
                Row(children: [
                  Container(
                    height: 50,
                    width: 200,
                    margin: EdgeInsets.fromLTRB(30, 0, 40, 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6FA),
                        borderRadius: BorderRadius.circular(13)),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '  Search...',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.5),
                      color: colormeet,
                    ),
                    child: Image(
                      image: AssetImage('assest/img_5.png'),
                    ),
                  )
                ]), //mic logo and sercha

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text("ALL",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: colormeet),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('men',style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('women',style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('kides',style: TextStyle(fontWeight: FontWeight.bold)),

                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('men',style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),

                    ], //row of brand
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 230,
                      margin: EdgeInsets.fromLTRB(20, 20, 50, 15),
                      child: Text(
                        '  NEW Arraival',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 100,
                      child: Center(
                          child: Text(
                            'Viewall',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: Colors.grey),
                          )),
                    ),
                  ],
                ), // bar of new
                GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: listmeet1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100 / 140),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      child: Container(
                        height: 257,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.5))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 300,
                                margin: EdgeInsets.fromLTRB(165, 0, 0, 0),
                                child: Image(image: AssetImage("assest/img_7.png"))),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Productview(index: index)),
                                );
                              },
                              child: Image.asset(
                                listmeet1[index]["image"],
                                height: 170,
                                width: 190,
                              ),
                            ),
                            Text(listmeet1[index]["name"]),
                            Text(listmeet1[index]["waretype"]),
                            Text(
                              "\INR ${listmeet1[index]["price"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  height: 15,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: listmeet1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100 / 140),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      child: Container(
                        height: 260,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.5))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [ Container(
                                  height: 50,
                                  width: 300,
                                  margin: EdgeInsets.fromLTRB(165, 0, 0, 0),
                                  child:Image(
                                    image: AssetImage("assest/img_7.png"),
                                  ),),],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Productview(index: index)),
                                );
                              },
                              child: Container(
                                height: 170,
                                width: 190,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                    listmeet1[index]["image"],fit: BoxFit.fitHeight,
                                    height: 150,
                                    width: 190,
                                  ),
                              ),
                              ),
                            
                            Text(listmeet1[index]["name"]),
                            Text(listmeet1[index]["waretype"]),
                            Text(
                              "INR ${listmeet1[index]["price"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}