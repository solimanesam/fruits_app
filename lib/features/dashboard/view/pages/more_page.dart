import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  List images = [
    'assets/images/person.png',
    'assets/images/Icon.png',
    'assets/images/Icon2.png',
    'assets/images/Language.png',
    'assets/images/headphone.png',
    'assets/images/terms.png',
    'assets/images/aboutus.png',
  ];
  List titles = [
    'Profile',
    'My Orders',
    'Favorite',
    'Language',
    'Support',
    'Terms & Conditions',
    'About Us',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Fruit Market'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              spacing: 25,
              children: [
                Container(
                  width: context.width <= 1000 ? 100 : 200,
                  height: context.width <= 1000 ? 100 : 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      context.width <= 1000 ? 50 : 100,
                    ),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Image.asset(
                    'assets/images/person.png',
                    color: Colors.grey,
                    scale: .5,
                  ),
                ),
                Text(
                  'Welcome , Fruit Market',
                  style: AppTextStyles.h3(context),
                ),
                CustomButton(
                  text: 'Login',
                  onPressed: () {},
                  width: responsiveWidth(context),
                ),
                ...List.generate(7, (index) {
                  return ProfileListTile(
                    image: images[index],
                    title: titles[index],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context),
      child: Row(
        children: [
          Image.asset(image, color: Colors.black),
          Spacer(flex: 1),
          Text(
            title,
            style: AppTextStyles.body1(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 15),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
