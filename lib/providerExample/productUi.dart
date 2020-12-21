import 'package:flutter/material.dart';
import 'package:professional_class/providerExample/product.dart';

class ProductUI extends StatelessWidget {
  Product product;
  ProductUI({this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          product.image,
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          product.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Text(
              product.price,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade900),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              product.discountAmount,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          product.description,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
        Wrap(
          children: [
            ...product.categories.map(
              (e) => Chip(
                label: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(e.name),
                ),
                backgroundColor: Colors.yellow[900],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
