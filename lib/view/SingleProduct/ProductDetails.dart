import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';
import 'package:uiexamflutter/view/SingleProduct/widgets/productDetailmore.dart';
import 'package:uiexamflutter/view/SingleProduct/widgets/productSimpleDetails.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: ColorConstant.primaryblack.withOpacity(.2),
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 2)
                    ]),
                child: productSimpleDetails(),
              ),
            ),
            Expanded(
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: ColorConstant.primaryblack.withOpacity(.2),
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 2)
                    ]),
                child: ProductDetailsMore(),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Icon(
                    Icons.favorite_outline,
                    color: ColorConstant.primarygreen,
                  ),
                ),
                Container(
                  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
