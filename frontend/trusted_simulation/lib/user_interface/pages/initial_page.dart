import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trusted_simulation/socket_cubit_provider/webscocket_provider_cubit.dart';
import 'package:trusted_simulation/user_interface/pages/home_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext c) => WebscocketProvider())
        ],
        child: const HomePage(),
      ),
    );
  }
}
