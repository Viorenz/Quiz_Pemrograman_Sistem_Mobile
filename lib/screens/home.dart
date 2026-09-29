import 'package:flutter/material.dart';
import '../models/mahasiswa.dart';
import '../utils/app_colors.dart';
import '../widgets/text_google.dart';
import '../widgets/secondary_button.dart';
import 'login.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Mahasiswa mhs = Mahasiswa(
      nim: '3337240039',
      nama: 'Viorenza Agustina Rahayu',
      alamat: 'Jl. Serang Raya NO.15',
      email: 'viorenzaagustinarahayu@gmail.com',
      hobi: 'Membaca Novel',
      telepon: '081234567890',
      ipk: 3.80,
    );

    return Scaffold(
      appBar: AppBar(
        title: const TextGoogle("Dashboard Data Mahasiswa"),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 320,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundColor: AppColors.primary,
                            child: Icon(Icons.person, size: 40, color: Colors.white),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextGoogle(
                                  mhs.nama,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(height: 4),
                                TextGoogle(
                                  mhs.nim,
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const Divider(height: 24),
                      _buildInfoRow("Email", mhs.email),
                      _buildInfoRow("Alamat", mhs.alamat),
                      _buildInfoRow("Hobi", mhs.hobi ?? '-'),
                      _buildInfoRow("Telepon", mhs.telepon ?? '-'),
                      _buildInfoRow("IPK", mhs.ipk.toString()),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            SecondaryButton(
              label: "Keluar (Logout)",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextGoogle(label, color: Colors.grey[700]),
          Flexible(
            child: TextGoogle(
              value,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}