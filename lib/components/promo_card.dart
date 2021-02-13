import 'package:flutter/material.dart';

Widget promoCard(Color color, String tittle, String promo, String img) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: color),
    width: double.infinity,
    height: 200.0,
    child: Stack(
      children: <Widget>[
        Positioned(
            width: 200.0,
            left: 8.0,
            top: 60.0,
            child: Text(
              tittle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
          child: Text(
            "",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          left: 10.0,
          top: 140.0,
        ),
        Positioned(
            left: 210.0,
            bottom: 30,
            width: 150,
            height: 150,
            child: Image.network(img)),
      ],
    ),
  );
}
