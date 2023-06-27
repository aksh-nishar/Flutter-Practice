import 'package:flutter/material.dart';
import 'package:my_app/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.cardColor,
        centerTitle: true,
        title: "Cart".text.color(context.theme.hintColor).make(),
      ),
      body: Column(
        children: [
          const _CartList().p32().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl4
              .color(context.theme.hintColor)
              .make(),
          30.widthBox,
          SizedBox(
            width: 100,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not supported yet.".text.make()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.highlightColor),
              ),
              child: "Buy".text.color(Colors.white).make(),
            ),
          ),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList();

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        title: _cart.items[index].name.text.make(),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
      ),
    );
  }
}
