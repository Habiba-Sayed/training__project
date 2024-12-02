import 'package:flutter/material.dart';
import 'package:training_project/core/app_colors.dart';
import 'package:training_project/views/edit_products/listtile_product.dart';

class EditProducts extends StatefulWidget {
  const EditProducts({super.key});

  @override
  State<EditProducts> createState() => _EditProductsState();
}

class _EditProductsState extends State<EditProducts> {
  Map<String, String> hoodiesMap = {
    "Adidas Black Hoodie": "assets/hoodies/Adidas_Black_Hoodie.JPG",
    "Black Hoodie": "assets/hoodies/Black_Hoodie.JPG",
    "Brown Hoodie": "assets/hoodies/Brown_Hoodie.JPG",
    "Dark Grey Hoodie": "assets/hoodies/Dark_Grey_Hoodie.JPG",
    "Nike Black Hoodie": "assets/hoodies/Nike_Black_Hoodie.JPG",
    "Nike Grey Hoodie": "assets/hoodies/Nike_Grey_Hoodie.JPG",
    "Olive Green Hoodie": "assets/hoodies/Olive_green_Hoodie.JPG",
    "White Hoodie": "assets/hoodies/White_Hoodie.JPG",
    "Colors Hoodie": "assets/hoodies/Colors_Hoodie.JPG",
  };
  Map<String, String> shortsMap = {
    "Black Short": "assets/shorts/Black_Short.jpg",
    "Grey Short": "assets/shorts/Grey_Short.jpg",
    "Blue Short": "assets/shorts/Blue_Short.jpg",
    "Nike Black Short": "assets/shorts/Nike_Black_Short.jpg",
    "Olive Green Short": "assets/shorts/Olivegreen_Short.jpg",
    "White Short": "assets/shorts/White_Short.jpg",
    "Black & Orange Short": "assets/shorts/Black_Orange_Short.jpg",
    "Blue Jeans Short": "assets/shorts/Blue_Jeans_Short.jpg",
  };

  Map<String, String> shoesMap = {
    "Adidas Shoes": "assets/shoes/Adidas_Shoes.JPG",
    "Black Shoes": "assets/shoes/Black_Shoes.JPG",
    "Nike Shoes 1": "assets/shoes/Nike_Shoes1.JPG",
    "Nike Shoes 2": "assets/shoes/Nike_Shoes2.JPG",
    "Nike Shoes 3": "assets/shoes/Nike_Shoes3.JPG",
    "Nike Shoes 4": "assets/shoes/Nike_Shoes4.JPG",
    "Nike Shoes 5": "assets/shoes/Nike_Shoes5.JPG",
    "Nike Shoes 6": "assets/shoes/Nike_Shoes6.JPG",
  };

  Map<String, String> bagsMap = {
    "Blue Bag": "assets/bags/Blue_Bag.JPG",
    "Blue & White Bag": "assets/bags/Blue_White_Bag.JPG",
    "Dark Casgmere Bag": "assets/bags/Dark_Cashmere_Bag.JPG",
    "Printed Bag": "assets/bags/OffWhite_Bag.JPG",
    "Orange Bag": "assets/bags/Orange_Bag.JPG",
    "Pink Bag": "assets/bags/Pink_Bag.JPG",
    "Red Bag": "assets/bags/Red_Bag.JPG",
    "Tote Bag": "assets/bags/Tote_bag.JPG",
  };

  Map<String, String> accessoriesMap = {
    "Sunglasses": "assets/accessories/Sun_Glasses.JPG",
    "Black Sunglasses": "assets/accessories/Black_Sunglass.JPG",
    "Brooch": "assets/accessories/Brooch.JPG",
    "Gold Bracelet": "assets/accessories/Gold_Bracelet.JPG",
    "Smart Watch": "assets/accessories/Smart_Watch.JPG",
    "Sun Hat": "assets/accessories/Sun_Hat.JPG",
    "Watch": "assets/accessories/Watch.JPG",
    "Yellow Cap": "assets/accessories/Yellow_Cap.JPG",
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Edit Products',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorWeight: 5,
            labelPadding: EdgeInsets.all(5),
            automaticIndicatorColorAdjustment: false,
            splashBorderRadius: BorderRadius.circular(20),
            dividerHeight: 0,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.purple,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.white),
            tabs: [
              Text("Hoodies"),
              Text("Shorts"),
              Text("Shoes"),
              Text("Bags"),
              Text("Accessories"),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: TabBarView(children: [
            ListTileProduct(itemMap: hoodiesMap),
            ListTileProduct(itemMap: shortsMap),
            ListTileProduct(itemMap: shoesMap),
            ListTileProduct(itemMap: bagsMap),
            ListTileProduct(itemMap: accessoriesMap),
          ]),
        ),
      ),
    );
  }
}
