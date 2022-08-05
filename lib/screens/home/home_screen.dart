import 'package:carrot_market_ui/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../screens/home/components/product_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('좌동'),
            SizedBox(width: 4.0),
            Icon(CupertinoIcons.chevron_down, size: 15.0, color: Colors.black,)
          ],
        ),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.search, color: Colors.black),onPressed: () {},),
          IconButton(icon: const Icon(CupertinoIcons.list_dash, color: Colors.black),onPressed: () {},),
          IconButton(icon: const Icon(CupertinoIcons.bell, color: Colors.black),onPressed: () {},)
        ],
        bottom: const PreferredSize(child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
            preferredSize: Size.fromHeight(0.5)
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ProductItem(
              product: productList[index],
            );
          },
          separatorBuilder: (context, index) => const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          ),
          itemCount: productList.length
      ),
    );
  }
}
