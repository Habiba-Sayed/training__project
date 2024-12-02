import 'package:flutter/material.dart';
import 'package:training_project/core/app_colors.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/hoodies/Dark_Grey_Hoodie.JPG"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Men's Harrington Jacket",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Text(
              "\$148",
              style: TextStyle(color: AppColors.purple, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: const [
                      Text("Size"),
                      Text("S"),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
