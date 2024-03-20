import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Category",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
                color: ColorConstant.primaryblack),
          ),
          Text(
            "view all",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          )
        ],
      ),
      SizedBox(
        width: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("asset/fruits.png")),
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                  alignment: Alignment.bottomCenter, child: Text("Fruits")),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("asset/veggies.png")),
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                  alignment: Alignment.bottomCenter, child: Text("Veggies")),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("asset/diary.png")),
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                  alignment: Alignment.bottomCenter, child: Text("Dairy")),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/essentials.png")),
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                  alignment: Alignment.bottomCenter, child: Text("Essentails")),
            ),
          ],
        ),
      ),
    ]);
  }
}
