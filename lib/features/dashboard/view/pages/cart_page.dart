import 'package:flutter/material.dart';
import 'package:fruits_app/features/dashboard/view/component/cart_item_widget.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Basket'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return CartItemWidget(discount: index == 0);
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 20);
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
