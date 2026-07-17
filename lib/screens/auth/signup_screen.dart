import 'package:flutter/material.dart';

import '../../core/route_names.dart';
import '../../widgets/auth_logo.dart';
import '../../widgets/auth_title.dart';
import 'package:bus/widgets/custom_textfield.dart';
import '../../widgets/google_button.dart';
import '../../widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void createAccount() {
    Navigator.pushReplacementNamed(
      context,
      RouteNames.dashboard,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [
              const SizedBox(height: 10),

              const AuthLogo(),

              const SizedBox(height: 20),

              const AuthTitle(
                title: "Create Account",
                subtitle: "Join us and start tracking buses",
              ),

              const SizedBox(height: 35),

              CustomTextField(
                controller: nameController,
                hint: "Full Name",
                prefixIcon: Icons.person_outline,
              ),

              const SizedBox(height: 18),

              CustomTextField(
                controller: emailController,
                hint: "Email",
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 18),

              CustomTextField(
                controller: phoneController,
                hint: "Phone Number",
                prefixIcon: Icons.phone_outlined,
              ),

              const SizedBox(height: 18),

              CustomTextField(
                controller: passwordController,
                hint: "Password",
                prefixIcon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 18),

              CustomTextField(
                controller: confirmPasswordController,
                hint: "Confirm Password",
                prefixIcon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 25),

              PrimaryButton(
                title: "Create Account",
                onTap: createAccount,
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
                  const Text("Already have an account?"),

                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Login"),
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