import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_input_field.dart';
import 'package:fruits_app/features/dashboard/view/component/welcome_avater_widget.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  final List<String> titles = ['Full Name', 'Phone Number', 'Password'];
  final List<String> hints = [
    'First and Last Name',
    'Mobile Number',
    'Password',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 20,
              children: [
                WelcomeAvatar(),
                ...List.generate(
                  titles.length,
                  (index) => CustomInputField(
                    width: responsiveWidth(context),
                    title: titles[index],
                    hint: hints[index],
                    keyboardType: index == 1
                        ? TextInputType.number
                        : TextInputType.text,
                    obscureText: index == 2 ? true : false,
                  ),
                ),
                CustomButton(
                  text: 'Update',
                  onPressed: () {},
                  width: responsiveWidth(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
