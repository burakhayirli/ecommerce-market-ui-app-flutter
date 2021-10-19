import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final String price;
  final String picUrl;
  final bool isAvailable;

  const ProductDetail(
      {Key? key,
      this.name = "",
      this.price = "",
      this.picUrl = "",
      this.isAvailable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(tag: picUrl, child: Image.network(picUrl)),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red.shade400,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20.0),
              Text(
                name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                price,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade400,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15.0,
                  left: 15.0,
                ),
                child: Text(
                  "Bu bölümde ürün açıklaması bulunacak. Ürünün ne kadar kaliteli olduğu hakkında bilgiler verecek.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: isAvailable ? Colors.red.shade400 : Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    isAvailable ? "Sepete Ekle" : "Stokta Yok",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
