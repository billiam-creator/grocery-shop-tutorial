import 'package:flutter/material.dart';


class CartModel extends ChangeNotifier{
  //list of items on StatelessWidget
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ["Avocado", "4.00", "lib/images/avocado.jpg", Colors.green],
    ["Banana", "2.50", "lib/images/banana.jpg", Colors.yellow],
    ["Chicken", "12.80", "lib/images/chicken.webp", Colors.brown],
    ["Water", "1.00", "lib/images/water.jpg", Colors.blue], 
  ];

  get shopItems => _shopItems;
}