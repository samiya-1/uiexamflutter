import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';

class ProductDetailsMore extends StatelessWidget {
  const ProductDetailsMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Text("Details", style: TextStyle(fontWeight: FontWeight.bold)),
        Divider(),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              " Brand              ",
              style: TextStyle(
                  color: ColorConstant.primaryblack.withOpacity(.4),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Red Label",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              " Type                ",
              style: TextStyle(
                  color: ColorConstant.primaryblack.withOpacity(.4),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Black Tea",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              " Quantity           ",
              style: TextStyle(
                  color: ColorConstant.primaryblack.withOpacity(.4),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "7 Kg",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              " Shelt life         ",
              style: TextStyle(
                  color: ColorConstant.primaryblack.withOpacity(.4),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "12 Months",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              " Organic            ",
              style: TextStyle(
                  color: ColorConstant.primaryblack.withOpacity(.4),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "No ",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              " Flavour            ",
              style: TextStyle(
                  color: ColorConstant.primaryblack.withOpacity(.4),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              " Plain  ",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            "More Details",
            style: TextStyle(
                color: ColorConstant.primarygreen, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
