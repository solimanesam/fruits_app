import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_input_field.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final List<String> title = ['Name', 'Phone', 'Message'];
  final List<String> images = [
    'assets/images/call.png',
    'assets/images/facebook.png',
    'assets/images/instagram.png',
    'assets/images/youtube.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Contact Us'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          spacing: 20,
          children: [
            ...List.generate(
              3,
              (index) => CustomInputField(
                hint: '',
                keyboardType: index == 1
                    ? TextInputType.number
                    : TextInputType.text,
                obscureText: false,
                title: title[index],
              ),
            ),
            CustomButton(
              text: 'Submit',
              onPressed: () {},
              width: responsiveWidth(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ...List.generate(
                  4,
                  (index) => Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Image.asset(images[index]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
