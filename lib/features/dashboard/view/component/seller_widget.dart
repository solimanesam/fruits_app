import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/features/dashboard/view/component/image_widget.dart';

class SellerWidget extends StatelessWidget {
  const SellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 110,
        padding: EdgeInsets.all(10),
        width: responsiveWidth(context),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageWidget(image: 'assets/images/group22.png'),
            Spacer(flex: 1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Seller name', style: AppTextStyles.h3(context)),
                Text(
                  'Delivery Charges : 0.5 KD',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
                RichText(
                  text: TextSpan(
                    text: '*  ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Open  ',
                        style: AppTextStyles.body2(
                          context,
                        ).copyWith(color: Colors.green),
                      ),
                      TextSpan(
                        text: '*  ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Coffee',
                        style: AppTextStyles.body2(
                          context,
                        ).copyWith(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(flex: 3),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '4.5',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
                Text(
                  '2.5 KM',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
