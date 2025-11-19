import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/features/dashboard/view/component/category_widget.dart';
import 'package:fruits_app/features/dashboard/view/component/home_appbar.dart';
import 'package:fruits_app/features/dashboard/view/component/home_smooth_page_indicator.dart';
import 'package:fruits_app/features/dashboard/view/component/seller_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              spacing: 10,
              children: [
                SizedBox(
                  height: context.height * .20,
                  width: responsiveWidth(context),
                  child: PageView.builder(
                    itemCount: 3,
                    controller: controller,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Frame2863.png'),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                HomeSmoothPageIndicator(controller: controller),
                SizedBox(
                  height: 100,
                  width: responsiveWidth(context, maxHeight: 1500),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [CategoryWidget(), SizedBox(width: 10)],
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: responsiveWidth(context, maxHeight: 1500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sellers', style: AppTextStyles.h3(context)),
                      Text(
                        'Show all',
                        style: AppTextStyles.h3(
                          context,
                        ).copyWith(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: responsiveWidth(context, maxHeight: 1500),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SellerWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
