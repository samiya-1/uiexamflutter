import 'package:flutter/material.dart';

class OrganicContainer extends StatelessWidget {
  const OrganicContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              // height: 50,
              // width: 300,
              "asset/organicveg.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
