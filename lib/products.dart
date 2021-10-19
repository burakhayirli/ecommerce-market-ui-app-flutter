import 'package:ecommercemarketui/category.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  TabController? tvController;

  @override
  void initState() {
    super.initState();
    tvController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: tvController,
            indicatorColor: Colors.red.shade400,
            labelColor: Colors.red.shade400,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
            tabs: [
              Tab(child: Text("Temel Gıda")),
              Tab(child: Text("Şekerlemeler")),
              Tab(child: Text("İçecekler")),
              Tab(child: Text("Temizlik")),
            ]),
        Expanded(
          child: TabBarView(
            controller: tvController,
            children: [
              Category(category: "Temel Gıda"),
              Category(category: "Şekerlemeler"),
              Category(category: "İçecekler"),
              Category(category: "Temizlik"),
            ],
          ),
        ),
      ],
    );
  }
}
