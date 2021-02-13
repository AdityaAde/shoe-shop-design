import 'package:flutter/material.dart';

Widget shoppingCard(String img, String productName, String price) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Color(0xfffafafa), boxShadow: [
          BoxShadow(blurRadius: 10.0, color: Colors.black26),
        ]),
        margin: EdgeInsets.only(right: 10.0),
        width: 130,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              img,
              fit: BoxFit.contain,
              height: 80,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              productName,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              price,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
