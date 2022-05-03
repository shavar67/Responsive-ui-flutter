import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  late ScrollController _scrollController;
  double scrollOffset = 0;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        scrollOffset = _scrollController.position.pixels / 4;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return SizedBox(
      width: _size.width,
      height: _size.height * 0.12,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          shape: BoxShape.circle),
                      width: 65,
                      height: 65),
                );
              })),
    );
  }
}
