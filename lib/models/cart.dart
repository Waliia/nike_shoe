import 'package:flutter/material.dart';
import 'package:nike_shoe/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Ario',
        price: '256',
        imagePath: 'images/shoe1.jpg',
        description: 'description'),
    Shoe(
        name: 'Berlin',
        price: '566',
        imagePath: 'images/shoe2.jpg',
        description: 'description'),
    Shoe(
        name: 'Easter',
        price: '145',
        imagePath: 'images/shoe3.jpg',
        description: 'description'),
    Shoe(
        name: 'Western',
        price: '299',
        imagePath: 'images/shoe4.jpg',
        description: 'description'),
    Shoe(
        name: 'Dalton',
        price: '299',
        imagePath: 'images/shoe5.jpg',
        description: 'description'),
  ];

  // list of cart items
  List<Shoe> cartItems = [];

  // get the list of shoes
  List<Shoe> getShoes() {
    return shoeShop;
  }

  // get cart items
  List<Shoe> getCartItems() {
    return cartItems;
  }

  // add a new item to the cart
  void addItemToCart(Shoe shoe) {
    cartItems.add(shoe);
    notifyListeners();
  }

  //remove a new item from the cart
  void removeItemFromCart(Shoe shoe) {
    cartItems.remove(shoe);
    notifyListeners();
  }
}
