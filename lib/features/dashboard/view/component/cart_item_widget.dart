import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, this.discount = true});
  final bool discount;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            width: 82,
            height: 82,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fruits.png'),
              ),
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)],
            ),
          ),
          InfoProductBasket(discount: discount),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_forever, size: 30),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove, size: 30),
                    ),
                    Text('1', style: AppTextStyles.button(context)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 30),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoProductBasket extends StatelessWidget {
  const InfoProductBasket({super.key, required this.discount});

  final bool discount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Name',
          style: AppTextStyles.body1(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        RichText(
          text: TextSpan(
            text: '12 KD',
            style: AppTextStyles.body2(context).copyWith(color: Colors.black),
            children: [
              TextSpan(text: '  '),
              TextSpan(
                text: '10 KD',
                style: AppTextStyles.body2(context).copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: discount,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('Up to 10% Off', style: AppTextStyles.body2(context)),
          ),
        ),
      ],
    );
  }
}
