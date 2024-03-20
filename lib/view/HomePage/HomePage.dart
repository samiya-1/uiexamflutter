// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:uiexamflutter/contsants/ColorConstant.dart';
import 'package:uiexamflutter/view/HomePage/bestseller/bestsellercontainercard.dart';
import 'package:uiexamflutter/view/HomePage/category/categorypage.dart';
import 'package:uiexamflutter/view/HomePage/featured%20deals/featureddeals.dart';
import 'package:uiexamflutter/view/HomePage/organicContainer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.sort,
                  color: ColorConstant.primarywhite,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search ",
                      hintStyle: TextStyle(color: ColorConstant.primarywhite),
                      prefixIconConstraints:
                          BoxConstraints(maxWidth: double.infinity),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: ColorConstant.primarywhite,
                      ),
                      isDense: true,
                      fillColor: Colors.grey.withOpacity(.6),
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: ColorConstant.primarygreen,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
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
                      OrganicContainer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CategoryPage(),
              SizedBox(
                height: 20,
              ),
              FeaturedDeals(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  bestsellercontainercard(),
                ],
              ),
              FeaturedDeals(),
            ],
          ),
        ),
      ),
    );
  }
}
