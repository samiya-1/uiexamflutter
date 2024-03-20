import 'package:flutter/material.dart';

class BestSellerPage extends StatelessWidget {
  const BestSellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Seller ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        Text(
          "View all",
          style: TextStyle(color: Colors.green, fontSize: 17),
        ),
      ],
    );
  }
}
