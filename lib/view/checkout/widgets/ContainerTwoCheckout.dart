import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';

class ContainerTwoCheckout extends StatelessWidget {
  ContainerTwoCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.blue[100]),
            child: Icon(
              Icons.delete,
              color: ColorConstant.primarygreen,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 100,
              width: 125,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://imgs.search.brave.com/BMx6S3NLZcld661qiXpC5XDgCKvQuiqUlrYIkSjGgzg/rs:fit:500:0:0/g:ce/aHR0cHM6Ly81Lmlt/aW1nLmNvbS9kYXRh/NS9IWS9JWC9UTC9T/RUxMRVItMjgzMjQw/MzIvMS1sdHItamVy/c2V5LWNvdy1naGVl/LTUwMHg1MDAuanBn"))),
            ),
            Column(
              children: [
                Text(
                  "Godrej jerdey cow ghee",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Text("\$5",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\$11",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "5% off",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.primarygreen),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstant.primarywhite,
                          border: Border.all(color: ColorConstant.primarygreen),
                          boxShadow: [BoxShadow(color: Colors.green)]),
                      child: Icon(
                        Icons.add,
                        color: ColorConstant.primarygreen,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstant.primarywhite,
                          border: Border.all(color: ColorConstant.primarygreen),
                          boxShadow: [BoxShadow(color: Colors.green)]),
                      child: Icon(
                        Icons.remove,
                        color: ColorConstant.primarygreen,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
