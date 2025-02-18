import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final String searchText;
  const SearchResult({super.key, required this.searchText});

  @override
  Widget build(BuildContext context) {
    return Text('Input: $searchText', style: const TextStyle(fontSize: 16));
  }
}
