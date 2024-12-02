import 'package:flutter/material.dart';
import 'package:training_project/core/app_colors.dart';

class ListTileProduct extends StatelessWidget {
  const ListTileProduct({
    super.key,
    required this.itemMap,
  });

  final Map<String, String> itemMap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: ListView.builder(
        itemCount: itemMap.length,
        itemBuilder: (context, index) {
          String key = itemMap.keys.elementAt(index);
          String value = itemMap[key]!;
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey,
                  blurRadius: 10,
                  offset: Offset(2, 3),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: ListTile(
              onTap: () {},
              leading: Image.asset(
                value,
                width: MediaQuery.of(context).size.height * 0.050,
              ),
              trailing: TextButton(
                onPressed: () {
                  // Add delete logic here
                },
                child: Text(
                  "Delete",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              ),
              title: Text(key),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.black,
                fontSize: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}
