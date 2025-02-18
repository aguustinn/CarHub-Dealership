import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            category.color.withValues(alpha: 128),
            category.color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
    );
  }
}
