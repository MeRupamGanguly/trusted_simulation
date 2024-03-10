import 'package:flutter/material.dart';
import 'package:trusted_simulation/user_interface/pages/initial_page.dart';

void main(List<String> args) {
  runApp(const TrustedSimulation());
}

class TrustedSimulation extends StatelessWidget {
  const TrustedSimulation({super.key});

  @override
  Widget build(BuildContext context) {
    return const InitialPage();
  }
}
