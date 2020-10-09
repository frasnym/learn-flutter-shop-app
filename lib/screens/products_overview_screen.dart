import 'package:flutter/material.dart';

import '../widgets/product_item.dart';
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://dknwnigc18uf4.cloudfront.net/product-media/94H/256/256/LENA0952550920-1.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Scarf',
      description: 'A nice pair of Scarf.',
      price: 10.99,
      imageUrl:
          'https://s3.amazonaws.com/pix.iemoji.com/images/emoji/apple/ios-12/256/scarf.png',
    ),
    Product(
      id: 'p4',
      title: 'Frying Pan',
      description: 'A nice pair of Frying Pan.',
      price: 59.99,
      imageUrl:
          'https://worldswitch-html-upload.world-switch.com/samurai.world-switch.com/thumb/E45/E450307H/E450307H-1_thumb.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id, loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
