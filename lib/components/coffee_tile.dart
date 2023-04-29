import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onPressed;
  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle:
            Text(coffee.price, style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
