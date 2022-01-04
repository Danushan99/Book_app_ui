import 'package:flutter/material.dart';

class CoustomTab extends StatelessWidget {
  final int selected;
  final Function callback;

  const CoustomTab(this.selected, this.callback, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("custom text"),
    );
  }
}
