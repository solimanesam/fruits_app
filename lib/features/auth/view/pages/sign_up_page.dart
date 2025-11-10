import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/core/utils/responsive_orienation.dart';
import 'package:fruits_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_input_field.dart';
import 'package:fruits_app/features/auth/view/component/auth_rich_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final List<String> titles = [
    'Full name',
    'Phone Number with Whatsapp',
    'Password',
  ];
  final List<String> hints = [
    'First and Last Name',
    'Phone Number',
    'Password',
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveOrientation(
      portrait: SignUpPortraitPage(titles: titles, hints: hints),
      landscape: SignUpLandScapePage(titles: titles, hints: hints),
    );
  }
}

class SignUpPortraitPage extends StatelessWidget {
  const SignUpPortraitPage({
    super.key,
    required this.titles,
    required this.hints,
  });

  final List<String> titles;
  final List<String> hints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: context.height <= 1000 ? 0 : context.height * .1,
        ),

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              spacing: 30,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Fruit Market',
                  style: AppTextStyles.title(
                    context,
                  ).copyWith(color: AppColors.primary),
                ),
                Text('Sign Up to Wikala', style: AppTextStyles.h1(context)),
                ...List.generate(
                  3,
                  (index) => CustomInputField(
                    height: index == 0 ? 45 : 55,
                    width: context.width <= 700
                        ? double.infinity
                        : context.width * 0.5,
                    title: titles[index],
                    hint: hints[index],
                    keyboardType: index == 1
                        ? TextInputType.number
                        : TextInputType.text,
                    obscureText: index == 2 ? true : false,
                  ),
                ),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {},
                  width: context.width <= 700
                      ? double.infinity
                      : context.width * 0.5,
                ),
                AuthRichText(text1: 'Already have an account?', text2: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpLandScapePage extends StatelessWidget {
  const SignUpLandScapePage({
    super.key,
    required this.titles,
    required this.hints,
  });
  final List<String> titles;
  final List<String> hints;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: context.height * .1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              spacing: 30,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    Column(
                      spacing: 20,
                      children: [
                        Text(
                          'Fruit Market',
                          style: AppTextStyles.title(
                            context,
                          ).copyWith(color: AppColors.primary),
                        ),
                        Text(
                          'Sign Up to Wikala',
                          style: AppTextStyles.h1(context),
                        ),
                        AuthRichText(
                          text1: 'Already have an account?',
                          text2: 'Login',
                        ),
                      ],
                    ),
                    Column(
                      spacing: 10,
                      children: [
                        ...List.generate(
                          3,
                          (index) => CustomInputField(
                            height: index == 0 ? 45 : 55,
                            width: context.width <= 700
                                ? double.infinity
                                : context.width * 0.5,
                            title: titles[index],
                            hint: hints[index],
                            keyboardType: index == 1
                                ? TextInputType.number
                                : TextInputType.text,
                            obscureText: index == 2 ? true : false,
                          ),
                        ),
                        CustomButton(
                          text: 'Sign Up',
                          onPressed: () {},
                          width: context.width <= 700
                              ? double.infinity
                              : context.width * 0.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
