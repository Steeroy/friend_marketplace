import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                "Sign In",
                style: GoogleFonts.nunito(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: GlobalVariables.HeadingText,
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(
                    text: "Email",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'text',
                      hintText: "Enter your email",
                      controller: emailController,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Password",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'password',
                      hintText: "Enter your password",
                      controller: passwordController,
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: PrimaryButton(
                        onPressed: () {},
                        text: "Sign In",
                      )),
                  const SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 68,
                        height: 2,
                        color: GlobalVariables.PrimaryColor,
                      ),
                      Text(
                        "Sign in using",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.HeadingText,
                        ),
                      ),
                      Container(
                        width: 68,
                        height: 2,
                        color: GlobalVariables.PrimaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 52),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/devicon_google.png',
                          height: 32,
                          width: 32,
                        ),
                        Image.asset(
                          'assets/images/logos_facebook.png',
                          height: 32,
                          width: 32,
                        ),
                        Image.asset(
                          'assets/images/ri_apple-fill.png',
                          height: 32,
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Center(
                    widthFactor: double.infinity,
                    child: RichText(
                        text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                          TextSpan(
                            text: 'No account? ',
                            style: GoogleFonts.nunito(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: GlobalVariables.HeadingText,
                            ),
                          ),
                          TextSpan(
                              text: 'Register here.',
                              style: GoogleFonts.nunito(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: GlobalVariables.PrimaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/register');
                                }),
                        ])),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
