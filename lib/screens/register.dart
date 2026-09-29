import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../widgets/text_google.dart';
import '../widgets/primary_button.dart';
import '../widgets/custom_input_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextGoogle("Register"),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextGoogle(
              'Buat Akun Pengguna Baru',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            const SizedBox(height: 30),
            const CustomInputField(
              hintText: "Nama Lengkap",
              icon: Icons.person,
            ),
            const SizedBox(height: 16),
            const CustomInputField(
              hintText: "Email",
              icon: Icons.email,
            ),
            const SizedBox(height: 16),
            const CustomInputField(
              hintText: "Kata Sandi",
              icon: Icons.lock,
              isPassword: true,
            ),
            const SizedBox(height: 80),
            PrimaryButton(
              label: "Daftar Sekarang",
              onPressed: () {
                // Kembali ke halaman Login setelah daftar
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}