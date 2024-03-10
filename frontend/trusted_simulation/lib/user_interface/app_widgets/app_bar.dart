import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trusted_simulation/domain/app_color.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: tsAppbarBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Trusted Simulation",
                style: TextStyle(
                  fontFamily: 'Logo',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: tsLogoColor,
                ),
              ),
              StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 1)),
                builder: (context, snapshot) {
                  return Text(
                    DateFormat('d MMM yyyy kk:mm:ss').format(DateTime.now()),
                    style: const TextStyle(
                      color: tsClockColor,
                      fontSize: 17,
                      fontFamily: 'Logo',
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: tsBackgroundColor,
              ),
              Column(
                children: [
                  Text(
                    "Rupam",
                    style: TextStyle(
                      fontFamily: 'Logo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: tsUserColor,
                    ),
                  ),
                  Text(
                    "zxv9y67",
                    style: TextStyle(
                      fontFamily: 'Logo',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: tsUserColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
