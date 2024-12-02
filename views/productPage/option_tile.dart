import 'package:flutter/material.dart';
import 'package:training_project/core/app_colors.dart';

class OptionTile extends StatelessWidget {
  final String label;
  final Widget child;

  const OptionTile({required this.label, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          child,
        ],
      ),
    );
  }
}
