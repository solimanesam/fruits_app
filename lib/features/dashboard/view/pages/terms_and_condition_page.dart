import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Terms and Conditions'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'A Terms and Conditions agreement acts as a legal contract between you (the company)and the user.\nIt’s where you \nmaintain your rights to exclude users from your app in the event that they abuse your website/app, set out the rules for \nusing your service and note other important details and disclaimers.\n \n \nHaving a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).\n\nYour Terms and Conditions agreement will be uniquely yours. While some clauses are standard and commonly seen in pretty much every Terms and Conditions agreement, it’s up to you to set the rules and guidelines that the user must agree to.\n\nTerms and Conditions agreements are alsoknown as Terms of Service or Terms of Use agreements. These terms are interchangeable, practically speaking. More rarely, it may be called something like an End User Services Agreement (EUSA). ',
          style: AppTextStyles.button(context),
        ),
      ),
    );
  }
}
