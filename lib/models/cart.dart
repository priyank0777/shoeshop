import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '250',
      description: 'Good shoe',
      imagePath: 'lib/images/jordan.jpeg',
    ),
    Shoe(
      name: 'Dunk Low',
      price: '1000',
      description: 'Down to Earth',
      imagePath: 'lib/images/dunk1.jpeg',
    ),
    Shoe(
      name: 'Runner',
      price: '300',
      description: 'Fast AF',
      imagePath: 'lib/images/download.jpeg',
    ),
  ];
  //list of items in users cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove items from the cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
