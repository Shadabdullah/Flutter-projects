import 'package:assignments/ch6Login/bloc/auth_bloc.dart';
import 'package:assignments/ch6Login/bloc/auth_event.dart';
import 'package:assignments/ch6Login/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/gradient_button.dart';
import 'widgets/login_feild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  label: 'Continue with Google'),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              LoginField(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 15),
              LoginField(
                hintText: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 20),
              GradientButton(
                onPressed: () {
                  context.read<AuthBloc>().add(AuthLoginRequested(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
