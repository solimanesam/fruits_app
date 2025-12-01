import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/features/dashboard/view/component/category_widget.dart';
import 'package:fruits_app/features/dashboard/view/component/image_widget.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class SellerPage extends StatelessWidget {
  const SellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(
        title: 'Fruits Market',
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 40)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SizedBox(
              width: responsiveWidth(context),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SellerContainer(),
                  Text('Categories', style: AppTextStyles.h3(context)),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      shrinkWrap: true,

                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      itemBuilder: (context, index) => CategoryWidget(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Products', style: AppTextStyles.h3(context)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_downward_rounded),
                      ),
                    ],
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 110,
                        padding: EdgeInsets.all(10),
                        width: responsiveWidth(context),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 1),
                          ],
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
                                    style: AppTextStyles.body2(
                                      context,
                                    ).copyWith(color: Colors.black),
                                    children: [
                                      TextSpan(text: '  '),
                                      TextSpan(
                                        text: '10 KD',
                                        style: AppTextStyles.body2(context)
                                            .copyWith(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Up to 10% Off',
                                    style: AppTextStyles.body2(context),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(flex: 3),
                            Image.asset('assets/images/cart.png'),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SellerContainer extends StatelessWidget {
  const SellerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Delivery : 40 to 60 min',
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
                      text: '4.5',
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Image.asset('assets/images/verfied.png')],
          ),
        ],
      ),
    );
  }
}
