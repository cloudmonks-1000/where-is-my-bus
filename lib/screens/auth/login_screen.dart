import 'package:flutter/material.dart';

import 'package:bus/widgets/custom_textfield.dart';
import '../../widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.all(24),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 40),

              Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.blue.shade100,
                  child: const Icon(
                    Icons.directions_bus,
                    size: 45,
                    color: Colors.blue,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Center(
                child: Text(
                  "WhereIsMyBus",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Center(
                child: Text(
                  "Track buses in real time",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ),

              const SizedBox(height: 45),

              const Text(
                "Welcome Back 👋",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "Login to continue",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 30),

              const CustomTextField(
                hint: "Email",
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 18),

              const CustomTextField(
                hint: "Password",
                prefixIcon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 12),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),

              const SizedBox(height: 20),

              PrimaryButton(
                title: "Login",
                onTap: () {},
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

              SizedBox(

                width: double.infinity,
                height: 55,

                child: OutlinedButton.icon(

                  onPressed: () {},

                  icon: const Icon(Icons.g_mobiledata, size: 35),

                  label: const Text(
                    "Continue with Google",
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  const Text(
                    "Don't have an account?",
                  ),

                  TextButton(
                    onPressed: () {
                      // Navigate to Signup
                    },
                    child: const Text(
                      "Sign Up",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}