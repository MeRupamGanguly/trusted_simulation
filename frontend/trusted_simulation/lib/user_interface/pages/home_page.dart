import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trusted_simulation/domain/tick.dart';
import 'package:trusted_simulation/socket_cubit_provider/webscocket_provider_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final streamConsumerBankNifty = BlocProvider.of<WebscocketProvider>(context)
        .consumeWebSocket("ws://192.168.243.48:3000/ws/banknifty");
    final streamConsumerFinNifty = BlocProvider.of<WebscocketProvider>(context)
        .consumeWebSocket("ws://192.168.243.48:3000/ws/finnifty");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StreamBuilder(
                stream: streamConsumerBankNifty,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var tick = TICK.fromJson(jsonDecode(snapshot.data));
                    return Text(tick.ltp!.toStringAsFixed(2));
                  } else {
                    return const CircularProgressIndicator(color: Colors.black,);
                  }
                }),
        
                StreamBuilder(
                stream: streamConsumerFinNifty,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var tick = TICK.fromJson(jsonDecode(snapshot.data));
                    return Text(tick.ltp!.toStringAsFixed(2));
                  } else {
                    return const CircularProgressIndicator(color: Colors.black,);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
