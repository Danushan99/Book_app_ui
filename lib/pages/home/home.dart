import 'package:bookapp/constants/color.dart';
import 'package:bookapp/pages/home/widget/book_view.dart';
import 'package:bookapp/pages/home/widget/coustom_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  final pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(
        children: [
          CoustomTab(tabIndex, (int index) {
            setState(() {
              tabIndex = index;
            });
            //pagecontroller.jumpToPage(index);
          }),
          Expanded(
            child: book_view(
              tabIndex,
              pagecontroller,
              (int index) => setState(() {
                tabIndex = index;
              }),
            ),
          ),
        ],
      ),
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
        "My Book app",
        style: TextStyle(color: nfont, fontSize: 18),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_outlined),
          color: nfont,
        )
      ],
    );
  }
}
