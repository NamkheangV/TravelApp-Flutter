import 'package:flutter/material.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.squarespace-cdn.com/content/v1/61ebfbdf13a0822b11d455eb/75ab6ce3-7f15-49b7-aa9e-a3c50666fc6c/CB7A5B1D-5EA3-4217-B6ED-D7332AF6DCD6.jpeg?format=2500w'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              left: 430,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 36, 32, 31),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              ))
        ],
      ),
    ));
  }
}
