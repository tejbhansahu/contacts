import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Hero(
          tag: "search",
          child: Container(
            color: Theme.of(context).colorScheme.secondaryContainer,
          )),
    );
  }
}
