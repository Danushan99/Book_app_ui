import 'package:bookapp/constants/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.menu_rounded), color: nfont),
      title: const Text(
        "MyBooks",
        style: TextStyle(color: nfont, fontSize: 18),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_outlined),
          color: nfont,
        )
      ],
    );
  }
}
