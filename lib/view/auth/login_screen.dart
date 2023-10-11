import 'package:ecommerce_prectice/data/utils/utils.dart';
import 'package:ecommerce_prectice/view/auth/forget_pass_screen.dart';
import 'package:ecommerce_prectice/view/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();

    final _passController = TextEditingController();
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
            const CustomText(text: 'Login'),
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
                  CustomeTextField(
                    hintText: 'Ente your password here...',
                    labelText: 'Password',
                    obscureText: true,
                    controller: _passController,
                    errorText: 'Error Password',
                  ),
                ],
              ),
            ),
            RowTextWithButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgetPassScreem(),
                    ));
              },
              text: 'Forgot your password?',
            ),
            RoundButton(
              text: 'LOGIN',
              onTap: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
            const Spacer(),
            LoginButtonWithSocialMedia(
              facebookButton: () {},
              googleButton: () {},
            )
          ],
        ),
      ),
    );
  }
}
