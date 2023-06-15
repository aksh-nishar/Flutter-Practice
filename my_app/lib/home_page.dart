import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Aksh";

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
