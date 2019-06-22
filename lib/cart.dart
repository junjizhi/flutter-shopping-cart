import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({Key key, this.cart}) : super(key: key);

  final cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          int giftIndex = cart.keys.toList()[index];
          int count = cart[giftIndex];
          return ListTile(
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/${giftIndex + 1}.jpg"),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            title: Text('Item Count: $count'),
            trailing: RaisedButton(
              child: Text('Clear'),
              color: Theme.of(context).buttonColor,
              elevation: 1.0,
              splashColor: Colors.blueGrey,
              onPressed: () {
                // Perform some action
              },
            ),
          );
        },
      ),
    );
  }
}
