import 'package:contacts/core/constant/styles.dart';
import 'package:contacts/ui/views/search/serach.dart';
import 'package:flutter/material.dart';

AppBar contactsAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Material(
      type: MaterialType.transparency,
      child: Hero(
          tag: "search",
          child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Search())),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(50.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10.0),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
                    const SizedBox(width: 10.0),
                    const Text("Search contacts",
                        style: Styles.tsDarkGreyRegular16),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.more_vert),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.supervised_user_circle))
                      ],
                    ),
                  ],
                ),
              ))),
    ),
  );
}
