import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variables.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (content, index) {
          final item = cart[index];
          return Dismissible(
            // Specify the direction to swipe and delete
            direction: DismissDirection.endToStart,
            key: Key('ee'),
            onDismissed: (direction) {
              // Removes that item the list on swipwe

              // Shows the information on Snackbar
            },
            background: Container(color: Colors.red),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage(item['imageUrl'].toString()),
                  radius: 30),
              title: Text(
                item['title'].toString(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: Text(item['size'].toString()),
            ),
          );
        },
      ),
    );
  }
}
