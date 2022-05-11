import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title, price, photo;
  const ProductCard(
      {Key? key, required this.photo, required this.price, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Image.network(
                photo,
                height: 120,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                  child: Text(title.length <= 18
                      ? title
                      : "${title.substring(0, 15)}..."),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
