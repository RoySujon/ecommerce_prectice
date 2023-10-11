import 'package:ecommerce_prectice/data/utils/utils.dart';
import 'package:ecommerce_prectice/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassScreem extends StatefulWidget {
  const ForgetPassScreem({super.key});

  @override
  State<ForgetPassScreem> createState() => _ForgetPassScreemState();
}

class _ForgetPassScreemState extends State<ForgetPassScreem> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passController = TextEditingController();
    final _nameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Color(0xffFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: 'Forgot password'),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomeTextField(
                    hintText: 'Ente your email here...',
                    labelText: 'Email',
                    controller: _emailController,
                    errorText: 'Error Email',
                  ),
                ],
              ),
            ),
            RowTextWithButton(
              onTap: () {},
              text: 'Forgot your password?',
            ),
            RoundButton(
              text: 'SEND',
              onTap: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
