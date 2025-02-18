import 'package:flutter/material.dart';

class TalanginContainer extends StatelessWidget {
  const TalanginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Sesuaikan tinggi dengan konten
        crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
        children: [
          const Text(
            'Talangin',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8), // Jarak antara teks atas & bawah
          const Text(
            'Deskripsi tambahan di bawah Talangin.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey, // Warna lebih soft
            ),
          ),
          const SizedBox(height: 12), // Jarak sebelum teks bawah
          // Row utama untuk "Pelajari lebih lanjut" di kiri & "Tampilkan" di kanan
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Row untuk "Pelajari lebih lanjut >"
              Row(
                children: [
                  Text(
                    'Pelajari lebih lanjut',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF036387), // Warna yang diperbarui
                    ),
                  ),
                  const SizedBox(width: 4), // Jarak antara teks & ikon
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF036387), // Warna yang diperbarui
                  ),
                ],
              ),

              // Row untuk "Tampilkan 👁"
              Row(
                children: [
                  Text(
                    'Tampilkan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF036387), // Warna yang diperbarui
                    ),
                  ),
                  const SizedBox(width: 4), // Jarak antara teks & ikon
                  const Icon(
                    Icons.visibility, // Icon mata
                    color: Color(0xFF036387), // Warna yang diperbarui
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16), // Jarak sebelum card
          // Row berisi dua card (kiri & kanan)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Card kiri
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Card Kiri',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Deskripsi singkat untuk card kiri.',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 4), // Jarak antara dua card
              // Card kanan
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Card Kanan',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Deskripsi singkat untuk card kanan.',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
