import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 1),
          ],
        ),
        child: AppBar(
          actionsPadding: EdgeInsets.only(right: 20),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: AppColors.primary, size: 40),
            ),
            Image.asset('assets/images/Layer15.png'),
          ],
          title: Text(
            'Fruit Market',
            style: AppTextStyles.h2(context).copyWith(color: AppColors.primary),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
