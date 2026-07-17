import 'package:flutter/material.dart';

import '../../core/route_names.dart';
import '../../widgets/auth_logo.dart';
import '../../widgets/auth_title.dart';
import 'package:bus/widgets/custom_textfield.dart';
import '../../widgets/google_button.dart';
import '../../widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    Navigator.pushReplacementNamed(
      context,
      RouteNames.dashboard,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),

              const AuthLogo(),

              const SizedBox(height: 20),

              const AuthTitle(
                title: "Welcome Back 👋",
                subtitle: "Login to continue",
              ),

              const SizedBox(height: 40),

              CustomTextField(
                controller: emailController,
                hint: "Email",
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 18),

              CustomTextField(
                controller: passwordController,
                hint: "Password",
                prefixIcon: Icons.lock_outline,
                isPassword: true,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),

              const SizedBox(height: 10),

              PrimaryButton(
                title: "Login",
                onTap: login,
              ),

              const SizedBox(height: 30),

              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("OR"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 25),

              GoogleButton(
                onPressed: () {},
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteNames.signup,
                      );
                    },
                    child: const Text("Sign Up"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}