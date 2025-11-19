import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';

class OrderItemWidget extends StatelessWidget {
  final String orderId;
  final String date;
  final String itemsCount;
  final String status;
  final VoidCallback onTap;

  const OrderItemWidget({
    super.key,
    required this.orderId,
    required this.date,
    required this.itemsCount,
    required this.status,
    required this.onTap,
  });

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "delivering":
        return Colors.orange;
      case "finished":
        return Colors.green;
      case "canceled":
        return Colors.red;
      case "working":
        return Colors.indigo;
      case "delivered":
        return Colors.purple;
      case "new":
        return Colors.lightBlue;
      default:
        return Colors.grey;
    }
  }

  IconData getStatusIcon(String status) {
    switch (status.toLowerCase()) {
      case "delivering":
        return Icons.local_shipping;
      case "finished":
        return Icons.done;
      case "canceled":
        return Icons.cancel;
      case "working":
        return Icons.work;
      case "delivered":
        return Icons.home_rounded;
      case "new":
        return Icons.fiber_new;
      default:
        return Icons.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    final statusColor = getStatusColor(status);
    final icon = getStatusIcon(status);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(width > 500 ? 24 : 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(width > 500 ? 22 : 16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 59,
              height: 59,
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: statusColor, size: 36),
            ),

            SizedBox(width: width > 500 ? 20 : 14),

            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(orderId, style: AppTextStyles.button(context)),
                  const SizedBox(height: 4),
                  Text(
                    "$date  ·  $itemsCount items",
                    style: AppTextStyles.body1(context),
                  ),
                  const SizedBox(height: 4),
                  RichText(
                    text: TextSpan(
                      text: "Status: ",
                      style: AppTextStyles.body1(
                        context,
                      ).copyWith(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: status,
                          style: AppTextStyles.button(
                            context,
                          ).copyWith(color: statusColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Arrow circle
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: statusColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
