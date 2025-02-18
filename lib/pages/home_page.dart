import 'package:flutter/material.dart';
import '../widgets/search_input.dart';
import '../widgets/search_result.dart';
import '../widgets/talangin_container.dart';
import '../widgets/header_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _searchText = "";

  void _updateSearchText(String value) {
    setState(() {
      _searchText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // **Header dengan tinggi lebih besar dan border radius di bawahnya**
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200, // Tambahkan tinggi header sesuai kebutuhan
              decoration: const BoxDecoration(
                color: Colors.blue, // Sesuaikan warna header
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    24,
                  ), // Tambahkan radius di kiri bawah
                  bottomRight: Radius.circular(
                    24,
                  ), // Tambahkan radius di kanan bawah
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4), // Efek bayangan bawah
                  ),
                ],
              ),
              child: const HeaderComponent(),
            ),
          ),

          // **Komponen A - Konten utama**
          // Positioned.fill(
          //   top: 200, // Sesuaikan agar tidak ketiban header
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const SizedBox(height: 40),
          //         SearchInput(onTextChanged: _updateSearchText),
          //         const SizedBox(height: 16),
          //         SearchResult(searchText: _searchText),
          //       ],
          //     ),
          //   ),
          // ),

          // **Komponen B - TalanginContainer di atas HeaderComponent**
          Positioned(
            top: 100, // Supaya muncul sedikit di atas header
            left: 16,
            right: 16,
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              child: TalanginContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
