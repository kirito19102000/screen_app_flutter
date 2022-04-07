import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SearchBarState();
  }
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        // margin: const EdgeInsets.all(5),
        height: 50,
        child: CupertinoSearchTextField(
          backgroundColor: Colors.white,
          padding: EdgeInsets.only(left: 10),
          prefixIcon: Icon(Icons.search, size: 30),
          placeholder: 'Bạn tìm gì hôm nay?',
        ),
      ),
    );
  }
}
