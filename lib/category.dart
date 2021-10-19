import 'package:ecommercemarketui/product_detail.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({Key? key, this.category = ""}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> listWillBeShown = [];

  @override
  void initState() {
    super.initState();

    if (widget.category == "Temel Gıda") {
      listWillBeShown = [
        productCard(
          "Zeytinyağı",
          "25.50 TL",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg",
          isAvailable: true,
        ),
        productCard(
          "Süt",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
          isAvailable: true,
        ),
        productCard(
          "Et",
          "65.50 TL",
          "https://cdn.pixabay.com/photo/2015/11/07/11/00/meat-1030729__340.jpg",
        ),
        productCard(
          "Yumurta",
          "5.50 TL",
          "https://media.istockphoto.com/photos/brown-eggs-in-a-plate-picture-id1157804675?b=1&k=20&m=1157804675&s=170667a&w=0&h=3MdUyZm7mls4ai2SisvrnJa3zpYwU1wQmsjyTdH-YXY=",
          isAvailable: true,
        ),
      ];
    } else if (widget.category == "Şekerlemeler") {
      listWillBeShown = [
        productCard(
          "Zeytinyağı",
          "25.50 TL",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg",
        ),
        productCard(
          "Süt",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        productCard(
          "Krema",
          "15.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        productCard(
          "Ekmek",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    } else if (widget.category == "İçecekler") {
      listWillBeShown = [
        productCard(
          "Zeytinyağı",
          "25.50 TL",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg",
        ),
        productCard(
          "Süt",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        productCard(
          "Krema",
          "15.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        productCard(
          "Ekmek",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    } else if (widget.category == "Temizlik") {
      listWillBeShown = [
        productCard(
          "Zeytinyağı",
          "25.50 TL",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg",
        ),
        productCard(
          "Süt",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        productCard(
          "Krema",
          "15.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        productCard(
          "Ekmek",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    }
  }

  Widget productCard(String name, String price, String picUrl,
      {bool isAvailable = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(
                      name: name,
                      price: price,
                      picUrl: picUrl,
                      isAvailable: isAvailable,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: picUrl,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(picUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              price,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1, //Izgara elemanlarının eni boyuna eşit olsun
      children: listWillBeShown,
    );
  }
}
