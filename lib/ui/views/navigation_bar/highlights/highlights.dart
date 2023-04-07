import 'package:contacts/core/navigation/navigation.dart';
import 'package:contacts/ui/views/navigation_bar/contacts/cubit/view_contact_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Highlights extends StatefulWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  State<Highlights> createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stared Contacts'),
      ),
      body: BlocBuilder<ViewContactCubit, ViewContactState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                var model = state.list[index];
                return Visibility(
                  visible: model.isFavourite ?? false,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      child: Text(
                        model.firstName?[0] ?? '',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                    title: Text("${model.firstName} ${model.lastName}"),
                    onTap: () =>
                        Navigate.viewContact(context: context, key: model.id),
                  ),
                );
              });
        },
      ),
    );
  }
}
