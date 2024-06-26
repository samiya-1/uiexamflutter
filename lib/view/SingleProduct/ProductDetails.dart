import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';
import 'package:uiexamflutter/view/SingleProduct/widgets/productDetailmore.dart';
import 'package:uiexamflutter/view/SingleProduct/widgets/productSimpleDetails.dart';
import 'package:uiexamflutter/view/checkout/checkoutScreens/CheckoutScreen.dart';

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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Icon(
                    Icons.favorite_outline,
                    color: ColorConstant.primarygreen,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CheckOutScreen())));
                    },
                    child: Container(
                      height: 60,
                      width: 325,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              color: ColorConstant.primarywhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
