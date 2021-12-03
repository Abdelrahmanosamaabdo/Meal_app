import 'package:flutter/material.dart';

import './item.dart';
import './data.dart';

class Categories_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YUMMI'),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        child: GridView(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          children: DATA_CATEGORIES
              .map((x) => Item(x.number, x.title, x.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 1000,
            childAspectRatio: 4 / 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ),
      ),
      backgroundColor: Colors.grey[500],
    );
  }
}
