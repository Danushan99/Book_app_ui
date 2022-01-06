// ignore_for_file: camel_case_types


import 'package:flutter/material.dart';

class book_view extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  const book_view(this.selected, this.pageController, this.callback, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("image view"),
    );
  }
}
