import 'package:flutter/material.dart';

class SearchBarApp extends StatelessWidget {
  final void Function() onSearch;
  final void Function() onCancel;
  const SearchBarApp({
    super.key,
    required this.onSearch,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      constraints: const BoxConstraints(maxWidth: 400.0),
      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.amberAccent),
      hintText: 'Search Something...',
      trailing: [
        IconButton(onPressed: onSearch, icon: const Icon(Icons.search)),
        IconButton(onPressed: onCancel, icon: const Icon(Icons.clear))
      ],
    );
  }
}
