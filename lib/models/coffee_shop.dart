import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // List of Coffee for Sale
  final List<Coffee> _shop = [
    // Black Coffee
    Coffee(
      name: 'Black Coffee',
      price: '\$1.50',
      imagePath: 'lib/images/coffee-cup.png',
    ),

    // Latte
    Coffee(
      name: 'Latte',
      price: '\$3.00',
      imagePath: 'lib/images/latte.png',
    ),

    // Espresso
    Coffee(
      name: 'Espresso',
      price: '\$2.00',
      imagePath: 'lib/images/espresso.png',
    ),

    // Iced Coffee
    Coffee(
      name: 'Iced Coffee',
      price: '\$2.00',
      imagePath: 'lib/images/iced-coffee.png',
    ),
  ];

  // User Cart
  List<Coffee> _userCart = [];

  // Get Coffee List
  List<Coffee> get coffeeShop => _shop;

  // Get User Cart
  List<Coffee> get userCart => _userCart;

  // Add Item to Cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // Remove Item from Cart
  void removeFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
