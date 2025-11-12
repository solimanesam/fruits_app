import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/image7.png')),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
          color: Colors.white,
        ),
      ),
    );
  }
}
