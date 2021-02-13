import 'package:flutter/material.dart';
import 'package:shoes_ui_design/components/promo_card.dart';
import 'package:shoes_ui_design/components/shopping_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingApp(),
    );
  }
}

class ShoppingApp extends StatefulWidget {
  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  List<String> imageUrl = [
    "https://ecs7-p.tokopedia.net/img/cache/215-square/shops-1/2019/2/17/49757907/49757907_f9fdd321-62a8-4543-a47f-551d65cc3ffe.png"
  ];

  List<String> classicUrl = [
    "https://id-test-11.slatic.net/p/8eec48555a892244e74ddecc1de7e84a.jpg_340x340q80.jpg_.webp",
    "https://id-test-11.slatic.net/p/2c529192156b485ca35d3ab9e42ada2d.png_340x340q80.jpg_.webp",
    "https://id-test-11.slatic.net/p/48a77676af7c720563c1606cbf39e1a5.jpg_340x340q80.jpg_.webp"
  ];

  List<String> collabsUrl = [
    "https://asset.kompas.com/crops/6NZAaPEgz7OmFzq5U9NS5ffIz9o=/0x0:0x0/750x500/data/photo/2019/12/14/5df492c88f8a2.jpg",
    "https://asset.kompas.com/crops/Chph05K5-PF9yKsvSZlRhP0RenM=/0x0:0x0/750x500/data/photo/2019/12/14/5df4931212c19.jpg",
    "https://i.pinimg.com/originals/c6/df/2c/c6df2cbe986751ef38ed012736888ca7.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Shoes Store",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 8.0,
              ),
              promoCard(Colors.red[900], "Discover The Compass Colection", "",
                  imageUrl[0]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Classic Shoes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shoppingCard(
                        classicUrl[0], "Gazzele low Black", "Rp.350.000"),
                    shoppingCard(
                        classicUrl[1], "Gazzele low Red", "Rp.350.000"),
                    shoppingCard(
                        classicUrl[2], "Gazzele low Blue", "Rp.350.000")
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Collabs Shoes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shoppingCard(collabsUrl[0], "Pot Meets Pop", "Rp.550.000"),
                    shoppingCard(collabsUrl[1], "Darahku Biru", "Rp.550.000"),
                    shoppingCard(
                        collabsUrl[2], "Compass x Bryant", "Rp.550.000")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red[800],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")
        ],
      ),
    );
  }
}
