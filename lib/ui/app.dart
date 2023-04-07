import 'package:contacts/core/data_sources/contacts/contcats_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contacts/core/managers/core_manager.dart';
import 'package:contacts/locator.dart';
import 'package:contacts/provider_setup.dart';
import 'package:contacts/ui/shared/themes.dart' as themes;
import 'package:contacts/ui/views/landingPage/landingPage.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final ContactsLocalDataSource? rocketsLocalDataSource =
      locator<ContactsLocalDataSource>();

  @override
  void initState() {
    super.initState();
    handleStartUpLogic();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: CoreManager(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themes.primaryMaterialTheme,
          home: const LandingPage(),
        ),
      ),
    );
  }

  Future handleStartUpLogic() async {
    await Future.wait([
      rocketsLocalDataSource!.init(),
    ]);
  }
}
