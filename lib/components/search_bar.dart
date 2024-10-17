import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
                // test doang
                );
          },
          suggestionsBuilder: suggestionsBuilder),
    );
  }
}
