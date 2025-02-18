import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final Function(String) onTextChanged;
  const SearchInput({super.key, required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Masukkan Kata Kunci',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onTextChanged,
          decoration: const InputDecoration(
            hintText: 'Cari sesuatu...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
