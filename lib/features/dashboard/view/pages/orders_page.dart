import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/features/dashboard/view/component/order_item_widget.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> statuses = [
      "Delivered",
      "Delivering",
      "New",
      "Canceled",
      "Finished",
      "Working",
    ];

    return Scaffold(
      appBar: SecondAppBar(title: 'My Orders'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: SizedBox(
            width: responsiveWidth(context, maxHeight: 1500),
            child: ListView.builder(
              itemCount: statuses.length,
              itemBuilder: (context, index) {
                return OrderItemWidget(
                  orderId: "#24318$index - 37 KD",
                  date: "9 Sep",
                  itemsCount: "${index + 1}",
                  status: statuses[index],
                  onTap: () {},
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
