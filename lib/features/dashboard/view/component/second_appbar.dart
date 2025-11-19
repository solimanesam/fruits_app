import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class SecondAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SecondAppBar({
    super.key,
    this.actions,
    required this.title,
    this.onPressed,
  });
  final List<Widget>? actions;
  final String title;
  final Function()? onPressed;

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
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
              color: Colors.black,
            ),
          ),
          actionsPadding: EdgeInsets.only(right: 20),
          actions: actions,
          centerTitle: true,
          title: Text(
            title,
            style: AppTextStyles.h2(context).copyWith(color: AppColors.primary),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
