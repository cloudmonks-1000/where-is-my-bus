import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "busLogo",
      child: Container(
        height: 95,
        width: 95,

        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),

        child: const Icon(
          Icons.directions_bus_rounded,
          size: 48,
          color: Colors.white,
        ),
      ),
    );
  }
}