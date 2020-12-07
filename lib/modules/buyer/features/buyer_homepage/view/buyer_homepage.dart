import 'package:flutter/material.dart';

class BuyerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/anna_logo.png"),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    Text("Deliver to\nAaitabare-Itahari, Nepal",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 25,color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/vegetable.jpg",
                    ),
                  ),
                  Text("Vegetable",style: TextStyle(color: Colors.black))
                ]),
                Column(

                  children: [
                  //"assets/images/rice.jpeg"
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/rice.jpeg",
                    ),
                  ),
                  Text("Rice",style: TextStyle(color: Colors.black))
                ]),
                Column(children: [
                  // Image.asset("assets/images/cereals.jpg", width: 80),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/cereals.jpg",
                    ),
                  ),
                  Text("Cereals",style: TextStyle(color: Colors.black))
                ]),
                Column(children: [
                  // Image.asset("assets/images/milkcategory.jpg", width: 80),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/milkcategory.jpg",
                    ),
                  ),
                  Text("Dairy Product",style: TextStyle(color: Colors.black))
                ]),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Highlights",
                  style: TextStyle(fontSize: 25,color: Colors.black),
                ),
                Text("View All",style: TextStyle(color: Colors.black))
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      Card(
                        elevation: 5,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/cauliflower.jpg",
                            width: 100,
                            height: 150,
                          ),
                          Text("Cauliflower",style: TextStyle(color: Colors.black))
                        ]),
                      ),
                      Card(
                        elevation: 5,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/rice.jpeg",
                            width: 100,
                            height: 150,
                          ),
                          Text("Rice",style: TextStyle(color: Colors.black))
                        ]),
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/milk.png",
                                width: 100,
                                height: 150,
                              ),
                              Text("Milk",style: TextStyle(color: Colors.black))
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 5,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/lentils.jpg",
                            width: 100,
                            height: 150,
                          ),
                          Text("Lentils",style: TextStyle(color: Colors.black))
                        ]),
                      ),
                      Card(
                        elevation: 5,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/potato.jpg",
                            width: 100,
                            height: 150,
                          ),
                          Text("Potato",style: TextStyle(color: Colors.black))
                        ]),
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/flour.jpg",
                                width: 100,
                                height: 150,
                              ),
                              Text("Flour",style: TextStyle(color: Colors.black))
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
