import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../widgets/text_google.dart';
import '../widgets/primary_button.dart';
import '../widgets/secondary_button.dart';
import '../widgets/custom_input_field.dart';
import 'register.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextGoogle(
              "Masukkan Akun",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            SizedBox(height: 30),
            const CustomInputField(hintText: "Email", icon: Icons.email),
            const SizedBox(height: 16),
            const CustomInputField(
              hintText: "Kata Sandi",
              icon: Icons.lock,
              isPassword: true,
            ),
            const SizedBox(height: 130),
            PrimaryButton(
              label: "Masuk",
              onPressed: () {
                // Navigasi ke HomeScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            const SizedBox(height: 12),
            SecondaryButton(
              label: "Daftar Akun Baru",
              onPressed: () {
                // Navigasi ke RegisterScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
