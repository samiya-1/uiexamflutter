import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';
import 'package:uiexamflutter/view/HomePage/HomePage.dart';
import 'package:uiexamflutter/view/checkout/widgets/ContainerThreeCheckout.dart';
import 'package:uiexamflutter/view/checkout/widgets/ContainerTwoCheckout.dart';
import 'package:uiexamflutter/view/checkout/widgets/containeronecheckout.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(blurRadius: 1, blurStyle: BlurStyle.outer)
                  ]),
              child: ContainerOneCheckout(),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(blurRadius: 1, blurStyle: BlurStyle.outer)
                  ]),
              child: ContainerTwoCheckout(),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(blurRadius: 1, blurStyle: BlurStyle.outer)
                  ]),
              child: ContainerThreeCheckout(),
            ),
            SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PROCEED TO CHECKOUT",
                      style: TextStyle(
                          color: ColorConstant.primarywhite,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: ColorConstant.primarywhite,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
