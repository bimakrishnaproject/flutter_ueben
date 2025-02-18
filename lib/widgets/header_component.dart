import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget implements PreferredSizeWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return PreferredSize(
      preferredSize: Size.fromHeight(screenHeight * 0.2),
      child: AppBar(
        title: const Text(
          'Selamat malam, Bima!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFFE55F1C),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
        // 🔹 Menambahkan border radius di bagian bawah
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        elevation: 2, // Memberikan efek shadow
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100); // Tinggi default
}
