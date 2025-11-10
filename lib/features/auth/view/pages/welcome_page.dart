import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/core/utils/responsive_orienation.dart';
import 'package:fruits_app/features/auth/view/component/already_member_widget.dart';
import 'package:fruits_app/features/auth/view/component/terms_rich_text.dart';
import 'package:fruits_app/features/auth/view/component/welcome_sign_conatiner.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveOrientation(
      portrait: WelcomePortraitPage(titles: titles, icons: icons),
      landscape: WelcomeLandScapePage(titles: titles, icons: icons),
    );
  }

  List<String> titles = ['Phone Number', 'Google', 'Facebook'];

  List<IconData> icons = [Icons.phone, Icons.g_mobiledata, Icons.facebook];
}

class WelcomePortraitPage extends StatelessWidget {
  const WelcomePortraitPage({
    super.key,
    required this.titles,
    required this.icons,
  });

  final List<String> titles;
  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            spacing: context.height * 0.02,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Fruit Market',
                style: AppTextStyles.title(
                  context,
                ).copyWith(color: AppColors.primary),
              ),
              SizedBox(height: 20),
              Text('Welcome To Our App', style: AppTextStyles.h1(context)),
              SizedBox(height: 20),
              ...List.generate(
                3,
                (index) => WelcomeSignContainer(
                  title: titles[index],
                  icon: icons[index],
                  color: index == 2 ? Color(0xFF235EAE) : Colors.white,
                  textColor: index == 2 ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 20),
              AlreadyMemberWidget(),
              SizedBox(height: 30),
              TermsRichText(),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeLandScapePage extends StatelessWidget {
  const WelcomeLandScapePage({
    super.key,
    required this.titles,
    required this.icons,
  });
  final List<String> titles;
  final List<IconData> icons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                spacing: context.height * 0.02,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Text(
                        'Fruit Market',
                        style: AppTextStyles.title(
                          context,
                        ).copyWith(color: AppColors.primary),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Welcome To Our App',
                        style: AppTextStyles.h1(context),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 20,
                    children: [
                      ...List.generate(
                        3,
                        (index) => WelcomeSignContainer(
                          title: titles[index],
                          icon: icons[index],
                          color: index == 2 ? Color(0xFF235EAE) : Colors.white,
                          textColor: index == 2 ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              AlreadyMemberWidget(),
              SizedBox(height: 30),
              TermsRichText(),
            ],
          ),
        ),
      ),
    );
  }
}
