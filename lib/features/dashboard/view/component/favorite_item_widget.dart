import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class FavoriteItemWidget extends StatelessWidget {
  const FavoriteItemWidget({super.key});

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
          Spacer(flex: 1),
          InfoFavoriteWidget(),
          Spacer(flex: 2),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.cancel_outlined, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoFavoriteWidget extends StatelessWidget {
  const InfoFavoriteWidget({super.key});

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
        Text(
          'Store Name : Store 1',
          style: AppTextStyles.body1(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
