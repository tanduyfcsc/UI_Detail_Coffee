import 'package:details_coffee/storeCoffee.dart';
import 'package:flutter/material.dart';

class ItemStoreCoffee extends StatelessWidget {
  final StoreCoffee store;

  ItemStoreCoffee({required this.store});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        // padding: EdgeInsets.only(),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, spreadRadius: 1)]),
        // width: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.network(
                '${store.image}',
                width: 150,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                              'Store: ${store.name}',
                              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.65)
                              ),
                            ),
                ))
          ],
        ),
      ),
    );
  }
}
