import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Hi, John'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Welcome back!'),
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    child: const Icon(Icons.person),
                    decoration: const BoxDecoration(color: Colors.white),
                    width: 50,
                    height: 50))
          ]),
        ],
      ),
    );
  }
}
