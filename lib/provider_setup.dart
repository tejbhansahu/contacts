import 'package:contacts/ui/views/add_contact/cubit/add_contact_cubit.dart';
import 'package:contacts/ui/views/navigation_bar/contacts/cubit/view_contact_cubit.dart';
import 'package:contacts/ui/views/view_contact/cubit/display_contact_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contacts/core/services/connectivity/connectivity_service_impl.dart';

/// List of providers that provider transforms into a widget tree
/// with the main app as the child of that tree, so that the entire
/// app can use these streams anywhere there is a [BuildContext]
List<BlocProvider> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<BlocProvider> independentServices = [];

List<BlocProvider> dependentServices = [];

List<BlocProvider> uiConsumableProviders = [
  BlocProvider<ConnectivityServiceImpl>(
    create: (context) => ConnectivityServiceImpl(),
  ),
  BlocProvider<AddContactCubit>(
    create: (context) => AddContactCubit(),
  ),
  BlocProvider<ViewContactCubit>(
    create: (context) => ViewContactCubit(),
  ),
  BlocProvider<DisplayContactCubit>(
    create: (context) => DisplayContactCubit(),
  )
];
