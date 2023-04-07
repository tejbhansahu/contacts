import 'package:contacts/ui/views/navigation_bar/custom_navigation/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contacts/core/services/connectivity/connectivity_service_impl.dart';
import 'package:contacts/core/utils/custom_snackbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityServiceImpl, ConnectivityState>(
        listener: (context, state) {
          if (state is Disconnected) {
            CustomSnackBar().showSnackBar(
                context: context,
                text: 'Disconnected',
                function: () => null,
                buttonText: 'OK');
          } else if (state is Connected) {
            CustomSnackBar().showSnackBar(
                context: context, text: 'Connected',
                function: () => null,
                buttonText: 'OK');
          }
        },
        child: const CustomNavigation());
  }
}
